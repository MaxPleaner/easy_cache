EasyCache is a way to easily cache method calls to a readable YAML file.

Internally it uses the [gemmy](http://github.com/maxpleaner/gemmy) library I made.

Specifically, the PersistedHash (which syncs a hash's state to YAML file) is
extended with a `get_or_set(key, &blk)` method where the block result gets cached as `key`.

The return value of `get_or_set` is the block result. So it can easily be placed as a wrapper
around any synchronous method:

```rb

require 'easy_cache'

my_method_cache = EasyCache.new("my_method_cache.yaml")
                # The file's path will be "~/gemmy/caches/my_method_cache.yaml"
                # The ~/gemmy path will be automatically created
                # The caches folder can be changed with:
                # ENV["GEMMY_CACHE_PATH"]

def my_method(arg)
  my_method_cache.get_or_set(arg) do
    "#{arg} result is saved" 
  end
end

def my_method(arg)
  my_method_cache.get_or_set(arg) do
    "#{arg} result is saved"
  end
end
```

There are other methods in the API, too.

- `#clear`
- `#set_state(hash)`
- `#get(*nested_keys)`
- `#set(*nested_keys, val)`
- `#data` (the entire state)

Note that `[]` and `[]=` only interact with the in-memory hash. They don't touch the YAML file.




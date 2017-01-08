defmodule Blog.Category do

def all(lang \\ 'en') do
  [
      %{id: 1,
        url: 'coding',
        titles: %{
                  en: 'Coding',
                  ua_ru: 'Coding1',
                  de: 'Coding2'
        }
      },
      %{id: 2,
        url: 'management',
        titles: %{
                  en: 'Management',
                  ua_ru: 'Management1',
                  de: 'Management2'
        }
      },
      %{id: 3,
        url: 'linux',
        titles: %{
                  en: 'Linux',
                  ua_ru: 'Linux1',
                  de: 'Linux2'
        }
      },
      %{id: 4,
        url: 'it',
        titles: %{
                  en: 'IT',
                  ua_ru: 'IT1',
                  de: 'IT2'
        }
      },
      %{id: 5,
        url: 'life',
        titles: %{
                  en: 'Life',
                  ua_ru: 'Life1',
                  de: 'Life2'
        }
      }
    ]
end

end

package asertodemo.GET.api.protected

import input.user.properties.roles as user_roles

default allowed = false
default visible = false
default enabled = false

allowed {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].allowed
}

visible {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].visible
}

enabled {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].enabled
}
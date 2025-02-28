package asertodemo.GET.api.protected

import input.user.properties.roles as user_roles

default allowed = false
default visible = false
default enabled = false

allowed if {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].allowed
}

visible if {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].visible
}

enabled if {
    some i
    data.roles[user_roles[i]].perms["asertodemo.GET.api.protected"].enabled
}

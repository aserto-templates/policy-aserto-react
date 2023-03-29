package asertodemo.GET.api.protected

import input.policy.path
import input.user.properties.roles as user_roles


default allow = false

allowed {
    some index
    data.roles[user_roles[index]].perms[path].allowed
}
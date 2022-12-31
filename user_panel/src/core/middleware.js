import user from './authguard'
export default {

    guest(to, from, next) {
        next(!user.check())
    },

    auth(to, from, next) {
        next(user.check() ? true : {
            path: '/login',
            query: {
                redirect: to.name
            }
        })
    }
}
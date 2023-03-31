const app = require('./src/app')
const PORT = 3000;

const sever = app.listen(PORT, () => {
    console.log(`Khởi Chạy Thành Công!!! ${PORT}`)
})

process.on('SIGINT', () => {
    sever.close(() => {
        console.log('Exit')
    })
})
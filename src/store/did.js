import caver from '~/plugins/caver'
//import EIP20 from '../../build/contracts/DIDCouncil'

// const tokenAddress = '0x345ca3e014aaf5dca488057592ee47305d9b3e10' // insert deployed EIP20 token address here
// const eip20 = new web3.eth.Contract(EIP20.abi, tokenAddress)

let account;

export const state = () => ({})

export const mutations = {}

export const actions = {
    getAccount() {
        return account;
    }
	// getName() {
	// 	return eip20.methods.name().call({ from: account })
	// },
	// async transfer(context, params) {
	// 	const transferMethod = EIP20.abi.find(method => {
	// 		return method.name === 'transfer'
	// 	})

	// 	const transferMethodTransactionData = web3Abi.encodeFunctionCall(
	// 		transferMethod,
	// 		[params.to, web3.utils.toBN(params.value)]
	// 	)

	// 	const estimateGas = await web3.eth.estimateGas({
	// 		from: account,
	// 		to: tokenAddress,
	// 		data: transferMethodTransactionData
	// 	})

	// 	const receipt = await web3.eth.sendTransaction({
	// 		from: account,
	// 		to: tokenAddress,
	// 		data: transferMethodTransactionData,
	// 		value: 0,
	// 		gas: estimateGas
	// 	})

	// 	return receipt
	// }
}

export const getters = {}

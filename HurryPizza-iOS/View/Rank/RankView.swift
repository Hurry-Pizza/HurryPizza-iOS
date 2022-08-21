//
//  RankView.swift
//  HurryPizza-iOS
//
//  Created by 고병학 on 2022/08/20.
//

import SwiftUI

struct RankView: View {
	var body: some View {
		ZStack {
			Image("rankBackground")
				.resizable()
				.ignoresSafeArea()

			VStack {
				Spacer()

				prize()

				VStack(spacing: 11) {
					listCell(name: "Toby", rank: 4, isUp: false)
					listCell(name: "Toby", rank: 4, isUp: true)
					listCell(name: "Toby", rank: 4, isUp: true)
					listCell(name: "Toby", rank: 4, isUp: true)
					listCell(name: "Toby", rank: 4, isUp: false)
					listCell(name: "Toby", rank: 4, isUp: true)
				}
					.padding(.top, 30)
			}
		}
		.accentColor(.black)
			.navigationTitle(
				Text("Rank")
					.font(.system(size: 17))
					.fontWeight(.semibold)
			)
			.navigationBarTitleDisplayMode(.inline)
	}

	@ViewBuilder
	private func prize() -> some View {
		ZStack(alignment: .leading) {
			VStack {
//				Spacer()
//					.frame(height: 11)

				second(name: "Toby", isUP: true)

				Spacer()
			}

			VStack {
				Spacer(minLength: 11)
					.frame(height: 11)

				third(name: "Toby", isUp: false)

				Spacer()
			}
				.padding(.leading, 220.68)

			first(name: "Toby", isUp: true)
				.padding(.leading, 88)
		}
			.frame(width: 354.45, height: 197.5)
	}

	@ViewBuilder
	private func first(name: String, isUp: Bool) -> some View {
		ZStack {
			Image("first")
				.resizable()
				.frame(width: 173.4, height: 197.5)
			VStack {
				Spacer()
					.frame(height: 135.44)

				HStack(alignment: .center) {
					if isUp {
						Image("rankingUp")
							.resizable()
							.frame(width: 18, height: 12)
					}
					else {
						Image("rankingDown")
							.resizable()
							.frame(width: 18, height: 12)
					}
					Text("1")
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
					Text(name)
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
				}
			}
		}
	}

	@ViewBuilder
	private func second(name: String, isUP: Bool) -> some View {
		ZStack {
			Image("second")
				.resizable()
				.frame(width: 132.59, height: 125.43)

			VStack {
				Spacer()
					.frame(height: 70)

				HStack(alignment: .center, spacing: 0) {
					if isUP {
						Image("rankingUp")
							.resizable()
							.frame(width: 18, height: 12)
					} else {
						Image("rankingDown")
							.resizable()
							.frame(width: 18, height: 12)
					}
					Text("2")
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
					Text(name)
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
						.padding(.leading, 11)
				}
			}
		}
	}

	@ViewBuilder
	private func third(name: String, isUp: Bool) -> some View {
		ZStack {
			Image("third")
				.resizable()
				.frame(width: 124.77, height: 126.35)

			VStack {
				Spacer()
					.frame(height: 70)

				HStack(alignment: .center, spacing: 0) {
					if isUp {
						Image("rankingUp")
							.resizable()
							.frame(width: 18, height: 12)
					} else {
						Image("rankingDown")
							.resizable()
							.frame(width: 18, height: 12)
					}

					Text("3")
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
					Text(name)
						.font(.system(size: 17))
						.foregroundColor(.junctionBlack)
						.padding(.leading, 10)
				}
			}
		}
	}

	@ViewBuilder
	private func listCell(name: String, rank: Int, isUp: Bool) -> some View {
		ZStack(alignment: .leading) {
			Rectangle()
				.foregroundColor(Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.67))

			HStack(alignment: .center, spacing: 0) {
				if isUp {
					Image("rankingUp")
						.resizable()
						.frame(width: 18, height: 12)
				} else {
					Image("rankingDown")
						.resizable()
						.frame(width: 18, height: 12)
				}

				Text(String(rank))
					.foregroundColor(.junctionGray)
					.font(.system(size: 17))
					.padding(.leading, 5)

				Text(name)
					.foregroundColor(.junctionBlack)
					.font(.system(size: 17))
					.fontWeight(.semibold)
					.padding(.leading, 30)
			}
				.padding(.leading, 18)
		}
			.frame(width: 357, height: 60)
			.cornerRadius(13)
	}
}






struct RankView_Previews: PreviewProvider {
	static var previews: some View {
		RankView()
	}
}

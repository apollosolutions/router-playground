import { PRODUCTS } from "./data.js";

export const getProductById = (id) =>
  PRODUCTS.find((it) => it.id === id);

export const resolvers = {
  Query: {
    product: (_, { id }) => getProductById(id),
    searchProducts(_, { searchInput }) {
      if (searchInput?.titleStartsWith) {
        return PRODUCTS.filter((p) =>
          p.title.startsWith(searchInput.titleStartsWith)
        );
      }

      return PRODUCTS;
    },
  },
  Product: {
    __resolveReference(ref) {
      return getProductById(ref.id);
    },
    releaseDate: () => getRandomDate().toISOString(),
    price: () => getRandomPrice()
  }
};

const getRandomDate = () => {
  // Get a random number between -10 and 10
  const randomDays = Math.floor(Math.random() * 20) - 10;
  const today = new Date();

  // Add the random number of days to today's date
  return new Date(today.getTime() + randomDays * 24 * 60 * 60 * 1000);
}

const getRandomPrice = () => {
  return Math.random() * 100
}

module.exports = {
  siteMetadata: {
    title: 'My Notes',
  },
  plugins: [{
    resolve: `gatsby-theme-andy`,
    options: {
      generateSlug: (str) => "BERT"
    }
  }],
};

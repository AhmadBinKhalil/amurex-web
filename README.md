<div align="center">
  <img src="https://github.com/thepersonalaicompany/amurex/raw/main/assets/ogimage.jpg" alt="Amurex Logo" width="800" />
  <h2>Amurex Web</h2>

  <p>
    <a href="https://github.com/thepersonalaicompany/amurex/blob/main/LICENSE">
      <img src="https://img.shields.io/badge/license-AGPL--3.0-blue.svg" alt="License" />
    </a>
    <a href="https://chrome.google.com/webstore/detail/amurex/dckidmhhpnfhachdpobgfbjnhfnmddmc">
      <img src="https://img.shields.io/chrome-web-store/v/dckidmhhpnfhachdpobgfbjnhfnmddmc.svg" alt="Chrome Web Store" />
    </a>
    <a href="https://twitter.com/thepersonalaico">
      <img src="https://img.shields.io/twitter/follow/thepersonalaico?style=social" alt="Twitter Follow" />
    </a>
    <a href="https://discord.gg/ftUdQsHWbY">
      <img alt="Discord" src="https://img.shields.io/discord/1306591395804348476">
    </a>
  </p>
</div>



## Amurex Web

This is the web interface for the Amurex project. It serves as the web app for viewing and managing previous meetings, built with Next.js.

## Prerequisites

- Node.js 18+

- npm, yarn, or pnpm

## Getting Started

First, clone the repository:
```
git clone https://github.com/thepersonalaicompany/amurex-web
cd amurex-web
```

Create a .env.local file in the root directory with the following variables:
```
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=
SUPABASE_ANON_KEY=
SUPABASE_URL=
OPENAI_API_KEY=
NEXT_PUBLIC_BASE_URL=
```

### Installation

1. Install dependencies:
```
npm install  # or yarn install or pnpm install
```

2. Run the development server:

```
npm run dev  # or yarn dev or pnpm dev
```

3. Open http://localhost:3000 in your browser.

### Building for Production

To create an optimized production build:
```
npm run build
```

To start the production server:
```
npm run start
```


## Docker

You can also run the Amurex Web application using Docker.

### Building the Docker Image

Build the docker image from the root directory of the project:
```
docker build -t amurex-web .
```

### Running the Container

Run the container by mapping port 3000 and loading environment variables from your `.env` file:
```
docker run -p 3000:3000 --env-file .env amurex-web
```

Alternatively, you can specify the required environment variables directly:
```
docker run -p 3000:3000 \
  -e NEXT_PUBLIC_SUPABASE_URL=your_supabase_url \
  -e NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key \
  -e SUPABASE_SERVICE_ROLE_KEY=your_supabase_service_role_key \
  -e SUPABASE_ANON_KEY=your_supabase_anon_key \
  -e SUPABASE_URL=your_supabase_url \
  -e OPENAI_API_KEY=your_openai_api_key \
  -e NEXT_PUBLIC_BASE_URL=your_base_url \
  amurex-web
```

This container will start the application on port 3000.


### Learn More

To learn more about Next.js, check out:

- [Next.js Documentation](https://nextjs.org/docs)

- [Learn Next.js](https://nextjs.org/docs)



// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Tyler Martinez",
  title: "Tyler Martinez - CV",
  footer: context { [#emph[Tyler Martinez -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.45in,
  page-bottom-margin: 0.45in,
  page-left-margin: 0.6in,
  page-right-margin: 0.6in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.55em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 24pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.35cm,
  header-space-below-headline: 0.35cm,
  header-space-below-connections: 0.35cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.4cm,
  section-titles-type: "centered_with_centered_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.55cm,
  section-titles-space-below: 0.15cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.25cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0.15cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 22,
  ),
)


= Tyler Martinez

  #headline([Frontend Infrastructure Engineer])

#connections(
  [San Diego, CA],
  [#link("mailto:slightlytyler@gmail.com", icon: false, if-underline: false, if-color: false)[slightlytyler\@gmail.com]],
)


== Summary

Frontend infrastructure engineer with over a decade of experience, including 5+ years owning foundational systems at Coinbase. Track record of making high leverage architectural calls under ambiguity, scaling systems from inception to company wide standard, and multiplying team output through mentorship, documentation, and hiring.

== Experience

#regular-entry(
  [
    #strong[Coinbase], Senior Engineer, Data Layer, Frontend Platform

  ],
  [
    2021 – 2026

  ],
  main-column-second-row: [
    #summary[Joined as the team's first external hire and grew into the primary technical driver of Coinbase's GraphQL platform, the system powering 95\% of UI surfaces, 65\% of edge traffic, and used daily by 700+ engineers company-wide.]

    - Owned the architecture of Coinbase's GraphQL live data systems, including the foundational decision to standardize GraphQL on HTTP streams rather than WebSockets, now the long-term standard, overcoming early skepticism about HTTP\/2's ability to scale. WebSockets used in other parts of the system remained a persistent source of instability by comparison.

    - Designed and owned the data-layer frontend library, a bespoke networking\/caching stack built on Relay, adopted as the standard networking foundation across Coinbase's apps.

    - Acted as the company-wide technical resource for frontend networking, caching, and protocols, regularly consulted by product teams, and authored documentation that became the primary onboarding resource for GraphQL company-wide.

    - Enabled the team's AI tooling initiatives including an MCP server for GraphQL service deployment and debugging, an automated PR reviewer, and an agent for authoring GraphQL schemas and resolvers.

    - Mentored engineers through design\/PR review and hands-on debugging, wrote roadmap docs that shaped multiple quarters of team execution, and helped build the team's hiring pipeline.

    - Drove resiliency and performance initiatives as a key incident responder across 100+ production incidents, frequently the point person for networking-layer root cause analysis.

  ],
)

#regular-entry(
  [
    #strong[Mapistry], Senior Engineer, Environmental Compliance

  ],
  [
    2020 – 2021

  ],
  main-column-second-row: [
    - Lead frontend engineer; developed a shared UI design system and networking layer for flagship mobile and web apps.

    - Built out CI systems, observability, and dev guardrails from square one, greatly increasing dev velocity and operational confidence.

  ],
)

#regular-entry(
  [
    #strong[Airbnb], Software Engineer, Regulatory Platform

  ],
  [
    2019 – 2020

  ],
  main-column-second-row: [
    #summary[Member of the Cities team, responsible for regulatory compliance across host markets. Built product features and ran communication campaigns to alert hosts to new regulations and guide them toward compliance.]

    - Developed radical new processes for launching regulations through custom internal tools rather than manual configuration, saving hundreds of engineering hours each quarter and reducing the rate of incidents caused by misconfiguration.

    - Launched regulations and ran communication campaigns in critical markets including Los Angeles and Miami.

  ],
)

#regular-entry(
  [
    #strong[Docker], Software Engineer, Enterprise Team

  ],
  [
    2017 – 2019

  ],
  main-column-second-row: [
    #summary[Contributed to Docker's enterprise products and company-wide libraries, including the shared testing library and design system.]

    - Frontend lead of Docker Trusted Registry; built out GraphQL networking layer and CI infrastructure.

    - Built testing systems which led to a \>50\% reduction in bug reports and a vast reduction in engineering hours spent manually QAing.

  ],
)

#regular-entry(
  [
    #strong[IBM], UI Engineer, Watson Health

  ],
  [
    2015 – 2017

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[Freelance], Web Developer

  ],
  [
    2013 – 2015

  ],
  main-column-second-row: [
  ],
)

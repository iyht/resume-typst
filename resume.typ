// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#import "@preview/octique:0.1.0": *

#show heading: set text(font: "Linux Biolinum")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)


#set par(justify: true)

#let chiline() = { v(-3pt); line(length: 100%); v(-5pt) }

#let continuescvpage() = {
  place(
    bottom + center,
    dx: 0pt,        // Horizontal offset (positive is rightward)
    dy: -10pt,      // Vertical offset (positive moves upwards)
    float: true,
    scope: "parent",
    [
      #text(fill: gray)[... continues on the next page ...]
    ]
  )
}

#let lastupdated(date) = {
  h(1fr); text("Last Updated in " + date, fill: color.gray)
}

// Uncomment the following lines to add the optional prompt at the bottom of the first CV page
// #continuescvpage()

= Haotian Yang

haotian.y\@outlook.com |
#link("https://github.com/iyht")[github.com/iyht] | 
#link("https://iyht.github.io")[iyht.github.io] | 
416-678-8415 |
#link("https://www.linkedin.com/in/iyht")[linkedin.com/in/iyht]

== Education
#chiline()

*The University of British Columbia* #h(1fr) 2021/09 -- 2022/12 \
M.Eng, Electrical and Computer Engineering, focus in Distributed System #h(1fr) Vancouver, BC \


*The University of Toronto* #h(1fr) 2016/09 -- 2021/05 \
H.B.Sc Computer Science, graduated with Distinction #h(1fr) Toronto, ON \
- Mathematical and Computational Sciences Honour Roll, ALPHA
- Undergraduate Research Grants, 2021
- Teaching Assistant for CSC263(Data Structures and Analysis Winter 2021), CSC311(Introduction to Machine Learning Fall 2020), CSC324(Principles of Programming Languages Fall 2020), CSC108(Introduction to Computer Programming Winter 2020)

== Work Experience
#chiline()

*Fortinet* #h(1fr) 2023/02 -- 2024/07 \
Embedded Software Development Engineer #h(1fr) Vancouver, BC \
- Developed and maintained the IPsec VPN for FortiOS.
- *TCP support for IKEv2 and IPsec*: Implemented RFC 8229 that encapsulates the IKEv2 and IPsec traffic in TCP to bypass the restriction of firewall on ESP packet.
- *VPN tunnel connectivity*: Developed a automatic way for detecting connectivity of VPN tunnel using RAW ICMP socket.
- *Automatic Transport for IPsec VPN*: Developed a protocol that automatically switches the transport protocol for IPsec VPN between UDP and TCP based on the network condition.
// - *FortiOS Reliablity*: Analyzed and fixed Kernel Panics, and analyzed and optimized system performance.
- *FortiOS Reliablity*: Investigated kernel panics using kdump/crash, delivered fixes, and optimized critical-path networking performance using perf and ftrace.

*ByteDance* #h(1fr) 2022/04 -- 2022/11 \
Search Engine R\&D Intern, Lark Search \& AI team #h(1fr) ShenZhen, China \
- Developed and maintained the backend of the Multi-Geo Search Engine.
- *Index Rebuilding*: Proposed and implemented a *configurable index rebuilding framework* for the *Multi-Geo Search Engine* that solved performance issues. Within one month, the throughput of the index rebuilding service *improved from 150QPS to about 1800QPS(13x)*.
- *Cloud Storage*: Cross-departmental cooperation developed the cloud storage management service for the search engine. Analyzed the performance issues, and *optimized query latency by $tilde$50%* by reducing cross-region RPC calls.
- *Rank*: Developed a ranking strategy for a Multi-Geo search engine in an empty query search scenario.
- *Content Abstraction*: Implemented the dynamic content abstraction service for the search engine, which solved the semantic incompleteness problems and improved user satisfaction indicator by $tilde$10\%.
- *Risk Control*: Built a risk control module for the retrieval phase in the search engine that downgrades the search capability for suspicious users.
// - Skills: Golang, Thrift, Protobuf, ElasticSearch, RocketMQ, KiteX

== Open-Source Contributions
#chiline()
*Zed* #link("https://github.com/zed-industries/zed")[github.com/zed-industries/zed]
- #link("https://github.com/zed-industries/zed/pull/26236")[#octique-inline("mark-github") PR:] Added support for detecting the vi_mode state in the keybinding context. Allow user to define and use the keybinding when the terminal is in vi_mode.
// - #link("https://github.com/zed-industries/zed/pull/26236")[Shipped a feature that allows Zed’s terminal keybinding system to detect and respond to vi mode. I added a public getter for the terminal’s vi_mode state and augmented the keybinding dispatch context to include a “vi_mode” tag when active. This unlocks configuration of vi-mode-specific keybindings, evaluated per keystroke, enabling more powerful and conflict-free terminal interactions.]
// - Built incremental project search for Zed, enabling responsive “search as you type.” I added a 200 ms debounce and a generation-based gating mechanism so only the latest query runs, preventing stale results. // Extended ProjectSearchView to track auto-search state and control focus, ensuring automatic searches don’t steal focus from the input field. The result is faster feedback, fewer interruptions, and more accurate results as users type.
- #link("https://github.com/zed-industries/zed/pull/38450")[#octique-inline("mark-github") PR:]  Implemented incremental project search in Zed with debounced auto-search and using generation-based gating for stale-run protection.

== Personal Project
#chiline()
*TinyKV* #link("https://github.com/iyht/tinykv")[github.com/iyht/tinykv]
- Built a Bitcask-inspired, log-structured key‑value store optimized for high-throughput writes and single‑seek reads. Implemented append‑only data files with write‑ahead logging (WAL), and an in‑memory skip list index.
*TinyHTTP* #link("https://github.com/iyht/tinyhttp-rust")[github.com/iyht/tinyhttp-rust]
- Built a minimalist multithreaded HTTP/1.1 server in Rust with a thread pool, basic routing, and static file serving.


== Research Experience
#chiline()

*Far Data Lab at University of Toronto* #h(1fr) 2024/07 -- 2025/01 \
Researcher #h(1fr) Toronto, ON \
- Conducted a large-scale empirical study on how federated learning impacts model accuracy across text, image, audio, and video using state-of-the-art models and a unified Flower-based framework, and identified when FL accuracy degradation is severe vs. negligible. 
// - Evaluated federated learning accuracy across text, image, audio, and video with state-of-the-art models in a consistent Flower-based pipeline, pinpointing when performance drops are severe vs. negligible.


*MEDCVR at University of Toronto* #h(1fr) 2020/05 -- 2021/04 \
Research Assistant #h(1fr) Toronto, ON \
- Real-time Depth Estimation: Designed and developed a real-time (processing images with a resolution of $1280 times 1024$ pixels beyond 60 fps) coarse-to-fine self-supervised stereo matching neural network for disparity estimation. 



// - *3D Vision Pipeline*: Developed a 3D vision pipeline for calibrating stereo endoscope and a parallelized Semi-Global Matching algorithm for disparity estimation and visualization tool for surface/point cloud.

    // \resumeSubheading
    // {The University of Toronto}
    // {Jan 2020 - Apr 2021}
    // {Research Assistant}
    // {Toronto, ON}
    // \resumeItemListStart
    //     \resumeItemBulletTwo{Bugs Identifier}{Developed a Transformer model for classification code bugs with supervised learning that learns the vector representation of student code, which then is used in error identification with $91\%$ accuracy, and error classification with $87\%$ accuracy.}
    //     % \resumeItemBulletTwo{Skills}{Python, PyTorch}
    // \resumeItemListEnd


// Feel free to change the date below to the last time you updated your CV
// #lastupdated("Mar 22, 2025")

== Publications
#chiline()
// \href{https://ieeexplore.ieee.org/document/9434058}
- An Empirical Study of the Impact of Federated Learning on Machine Learning Model Accuracy. Haotian Yang, Zhuoran Wang, Benson Chou, Sophie Xu, Hao Wang, Jingxian Wang, Qizhen Zhang, arXiv:2503.20768, 2025
- Real-time Coarse-to-Fine Depth Estimation for Stereo Endoscopic Image with Self-supervised Learning. Haotian Yang, Lueder A. Kahrs. IEEE International Symposium on Biomedical Imaging(ISBI), 2021.  
- Locating Bugs in CS1 Code with Recurrent Neural Networks. Lucas Roy, Haotian Yang, Lisa Zhang. Sixth SPLICE Workshop at L\@S, 2020.
    // \href{https://cssplice.github.io/LAS20/proc/SPLICE_2020_LS_paper_3.pdf}{Lucas Roy, \textbf{Haotian Yang}, \& Lisa Zhang. Locating Bugs in CS1 Code with Recurrent Neural Networks.} \em{Sixth SPLICE Workshop at L@S 2020}.

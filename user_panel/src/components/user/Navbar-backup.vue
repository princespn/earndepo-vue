<template>
    <div>
      <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <div class="logo-wraper"><img src="/user-assets/images/Plenetron-logo.png"></div>
            </div>
            <div class="sideprofile-wraper">
               <div class="profile-wraper"><img src="/user-assets/images/profile.png"></div>
               <div class="name-title">John Smith</div>
               <div class="id-text">PLE15486</div>
            </div>
            <ul class="list-unstyled components" id="accordion">
                <li>
                    <a href="#">
                      <span class="menu-icon">
                          <svg id="My_Panel" data-name="My Panel" xmlns="http://www.w3.org/2000/svg" width="23.193" height="23.192" viewBox="0 0 23.193 23.192">
                          <path id="Path_61826" data-name="Path 61826" d="M378.312,164.183c.055.02.108.044.164.061a1.682,1.682,0,0,1,1.238,1.627q.006,5.073,0,10.146a1.684,1.684,0,0,1-1.747,1.7c-1.88.007-3.76,0-5.639,0-.491,0-.981,0-1.472,0a1.7,1.7,0,0,1-1.771-1.768q-.006-4.994,0-9.987a1.689,1.689,0,0,1,1.378-1.744.277.277,0,0,0,.059-.032Zm-7.78,6.747q0,2.467,0,4.935c0,.333.066.4.394.4h6.95c.329,0,.39-.065.39-.4q0-4.912,0-9.824c0-.356-.051-.408-.4-.408h-6.927c-.347,0-.4.058-.4.408Q370.532,168.485,370.533,170.93Z" transform="translate(-356.525 -164.183)" fill="#fff"/>
                          <path id="Path_61827" data-name="Path 61827" d="M118.721,358.123a3.863,3.863,0,0,1,.157-.446,1.628,1.628,0,0,1,1.529-.986q3.623-.019,7.247,0a1.683,1.683,0,0,1,1.7,1.79q0,3.171,0,6.341,0,1.778,0,3.555a1.706,1.706,0,0,1-1.834,1.84h-6.93a1.7,1.7,0,0,1-1.841-1.372c0-.013-.019-.022-.029-.033Zm1.45,5.313q0,2.479,0,4.957c0,.308.065.374.368.374h6.995c.3,0,.371-.07.371-.374q0-4.935,0-9.87c0-.318-.07-.389-.383-.389h-6.972c-.314,0-.378.067-.378.389Q120.17,360.98,120.171,363.436Z" transform="translate(-118.721 -347.026)" fill="#fff"/>
                          <path id="Path_61828" data-name="Path 61828" d="M127.916,164.183a4.966,4.966,0,0,1,.837.419,1.565,1.565,0,0,1,.6,1.311c0,1.426.01,2.853,0,4.279a1.676,1.676,0,0,1-1.721,1.722q-3.589.016-7.177,0a1.681,1.681,0,0,1-1.69-1.331.875.875,0,0,0-.041-.1v-4.892c.028-.076.057-.152.083-.228a1.64,1.64,0,0,1,.884-1.006c.141-.066.291-.113.437-.169Zm-3.875,1.45h-3.485c-.325,0-.386.059-.386.378q0,2.037,0,4.074c0,.316.067.383.385.383h6.97c.3,0,.378-.073.378-.371q0-2.048,0-4.1c0-.3-.072-.367-.377-.367Z" transform="translate(-118.721 -164.183)" fill="#fff"/>
                          <path id="Path_61829" data-name="Path 61829" d="M374.394,480.065q-1.766,0-3.531,0a1.7,1.7,0,0,1-1.794-1.786q-.006-2.082,0-4.165a1.7,1.7,0,0,1,1.778-1.781q3.542-.006,7.085,0a1.692,1.692,0,0,1,1.769,1.788q0,2.082,0,4.165a1.692,1.692,0,0,1-1.775,1.779Q376.159,480.068,374.394,480.065Zm-.012-1.449h3.485c.324,0,.384-.06.384-.381q0-2.037,0-4.074c0-.314-.067-.381-.387-.381h-6.948c-.332,0-.4.066-.4.4q0,2.026,0,4.051c0,.328.064.389.4.389Z" transform="translate(-356.509 -456.873)" fill="#fff"/>
                        </svg>
                      </span>
                      My Panel
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="menu-icon">
                          <svg id="My_Profile" data-name="My Profile" xmlns="http://www.w3.org/2000/svg" width="24.768" height="24.764" viewBox="0 0 24.768 24.764">
                          <path id="Path_61830" data-name="Path 61830" d="M641,158.193v-1.451a2.016,2.016,0,0,0,.042-.232,11.782,11.782,0,0,1,.689-3.248,12.384,12.384,0,0,1,23.813,6.528,12.393,12.393,0,0,1-10.029,9.868c-.467.08-.939.128-1.408.191h-1.451c-.327-.039-.654-.072-.98-.118A12.388,12.388,0,0,1,641.19,159.6C641.109,159.133,641.063,158.662,641,158.193Zm9.384.676a5.079,5.079,0,1,1,6,.006,9.5,9.5,0,0,1,5.669,5.216,10.913,10.913,0,1,0-17.338-.009A9.55,9.55,0,0,1,650.384,158.869Zm3.077,9.534c.193-.011.474-.024.755-.046a10.729,10.729,0,0,0,6.627-2.927.277.277,0,0,0,.064-.239,7.984,7.984,0,0,0-15.056-.019.211.211,0,0,0,.065.269A10.971,10.971,0,0,0,653.461,168.4Zm-.09-17.271a3.626,3.626,0,1,0,3.636,3.623A3.638,3.638,0,0,0,653.372,151.133Z" transform="translate(-641 -145.085)" fill="#fff"/>
                        </svg>
                      </span>    
                    My Profile
                    </a>
                </li>
                <li>
                    <a href="#Submenu-1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                        <svg id="Manage_My_funds" data-name="Manage My funds" xmlns="http://www.w3.org/2000/svg" width="25.642" height="25.642" viewBox="0 0 25.642 25.642">
                          <path id="Path_61831" data-name="Path 61831" d="M1213,151.817a1.388,1.388,0,0,0,.041-.216,1.174,1.174,0,0,1,.832-1.132c.5-.193.991-.4,1.489-.589a.435.435,0,0,0,.272-.286q.424-1.081.893-2.145a.4.4,0,0,0,.008-.37c-.224-.5-.434-1.012-.654-1.517a1.139,1.139,0,0,1,.217-1.343c.463-.481.933-.957,1.418-1.416a1.11,1.11,0,0,1,1.28-.208c.522.221,1.041.453,1.568.663a.5.5,0,0,0,.34-.009c.726-.292,1.444-.6,2.172-.892a.409.409,0,0,0,.27-.255c.194-.506.4-1.007.6-1.512a1.158,1.158,0,0,1,1.141-.817c.651-.005,1.3-.009,1.953,0a1.112,1.112,0,0,1,1.073.762c.212.526.416,1.056.641,1.577a.506.506,0,0,0,.251.229q1.079.465,2.168.9a.5.5,0,0,0,.339.017c.519-.207,1.031-.434,1.543-.656a1.14,1.14,0,0,1,1.343.22c.481.463.956.934,1.414,1.419a1.111,1.111,0,0,1,.2,1.28c-.218.515-.435,1.03-.663,1.541a.428.428,0,0,0,.01.392q.463,1.052.884,2.122a.429.429,0,0,0,.265.292c.515.194,1.023.408,1.534.611a1.136,1.136,0,0,1,.789,1.107q.014.976,0,1.953a1.136,1.136,0,0,1-.789,1.107c-.519.207-1.041.409-1.554.631a.507.507,0,0,0-.228.253q-.464,1.079-.9,2.169a.5.5,0,0,0-.013.339c.2.512.423,1.017.646,1.521a1.151,1.151,0,0,1-.216,1.366c-.463.481-.935.955-1.421,1.412a1.1,1.1,0,0,1-1.257.208c-.531-.223-1.056-.46-1.591-.673a.5.5,0,0,0-.339.016q-1.09.438-2.168.9a.507.507,0,0,0-.251.229c-.2.466-.4.938-.571,1.416a1.235,1.235,0,0,1-1.245.932.605.605,0,0,0-.144.036h-1.5a.606.606,0,0,0-.144-.036,1.235,1.235,0,0,1-1.244-.93c-.17-.47-.374-.928-.552-1.4a.434.434,0,0,0-.286-.272q-1.079-.426-2.142-.893a.405.405,0,0,0-.37-.008c-.51.226-1.025.443-1.539.663a1.121,1.121,0,0,1-1.3-.207q-.726-.688-1.418-1.413a1.141,1.141,0,0,1-.212-1.343c.22-.5.429-1.013.653-1.516a.4.4,0,0,0-.011-.369c-.31-.709-.609-1.423-.892-2.143a.433.433,0,0,0-.272-.286c-.5-.191-.99-.4-1.487-.591a1.175,1.175,0,0,1-.831-1.132,1.382,1.382,0,0,0-.041-.216Zm5.279-8.494a1.433,1.433,0,0,0-.243.159c-.429.421-.85.85-1.278,1.272a.4.4,0,0,0-.082.5c.257.58.494,1.168.755,1.746a.628.628,0,0,1-.03.638,9.114,9.114,0,0,0-1.025,2.465.615.615,0,0,1-.41.46c-.6.232-1.193.476-1.792.709a.38.38,0,0,0-.281.392q.008.9,0,1.8a.4.4,0,0,0,.294.41c.6.232,1.193.477,1.792.71a.6.6,0,0,1,.394.443,9.242,9.242,0,0,0,1.034,2.488.609.609,0,0,1,.028.615c-.259.579-.5,1.167-.755,1.746a.411.411,0,0,0,.086.52q.633.624,1.258,1.256a.4.4,0,0,0,.5.081c.58-.257,1.168-.495,1.746-.755a.626.626,0,0,1,.637.03,9.157,9.157,0,0,0,2.465,1.025.614.614,0,0,1,.459.409c.231.6.476,1.193.71,1.792a.382.382,0,0,0,.393.281c.593,0,1.185-.005,1.777,0a.421.421,0,0,0,.444-.319c.225-.593.471-1.177.7-1.768a.594.594,0,0,1,.443-.394,9.2,9.2,0,0,0,2.488-1.034.608.608,0,0,1,.615-.029c.579.259,1.167.5,1.746.755a.411.411,0,0,0,.52-.085q.624-.633,1.257-1.258a.4.4,0,0,0,.082-.5c-.256-.58-.494-1.168-.755-1.746a.628.628,0,0,1,.03-.637,9.029,9.029,0,0,0,1.016-2.441.65.65,0,0,1,.441-.491c.593-.225,1.178-.47,1.768-.7a.382.382,0,0,0,.281-.393c0-.592-.006-1.185,0-1.777a.422.422,0,0,0-.319-.445c-.584-.223-1.161-.468-1.745-.691a.631.631,0,0,1-.425-.475,9.135,9.135,0,0,0-1.026-2.464.609.609,0,0,1-.029-.615c.262-.586.506-1.181.765-1.769a.383.383,0,0,0-.078-.477q-.641-.635-1.274-1.276a.4.4,0,0,0-.5-.081c-.587.26-1.182.5-1.769.765a.59.59,0,0,1-.592-.028,9.181,9.181,0,0,0-2.487-1.036.613.613,0,0,1-.46-.409c-.231-.6-.476-1.193-.71-1.792a.381.381,0,0,0-.392-.282c-.592,0-1.185.005-1.777,0a.42.42,0,0,0-.444.319c-.225.593-.471,1.178-.7,1.768a.6.6,0,0,1-.443.395,9.3,9.3,0,0,0-2.488,1.034.61.61,0,0,1-.615.029c-.579-.259-1.164-.5-1.748-.751C1218.457,143.382,1218.377,143.358,1218.279,143.323Z" transform="translate(-1213 -139.768)" fill="#fff"/>
                          <path id="Path_61832" data-name="Path 61832" d="M1298.85,233.848a8.984,8.984,0,1,1,9-9.006A8.983,8.983,0,0,1,1298.85,233.848Zm5.876-3.4a8.114,8.114,0,0,0-6.578-13.7,8.175,8.175,0,0,0-7.206,6.256,7.983,7.983,0,0,0,2.078,7.432,10.284,10.284,0,0,1,1.092-2.709,10.474,10.474,0,0,1,1.816-2.284,1.284,1.284,0,0,1-.445-1.308,1.3,1.3,0,0,1,.986-.968c-.293-.584-.581-1.139-.851-1.7a1.555,1.555,0,0,1,.843-2.172c.128-.052.253-.109.38-.164-.034-.113-.064-.2-.085-.289a.818.818,0,0,1,.495-.981,4.763,4.763,0,0,1,3.217-.005.815.815,0,0,1,.508,1c-.023.094-.05.187-.078.288l.317.128a1.571,1.571,0,0,1,.866,2.277c-.169.345-.342.687-.513,1.031l-.3.6a1.309,1.309,0,0,1,.595,2.234A9.8,9.8,0,0,1,1304.725,230.449Zm-5.81-4.73c-.6,0-1.2-.005-1.8.005a.531.531,0,0,0-.311.112,8.753,8.753,0,0,0-3,5.126.331.331,0,0,0,.152.374,8.126,8.126,0,0,0,9.776.043.436.436,0,0,0,.2-.5,8.646,8.646,0,0,0-2.853-5.017.635.635,0,0,0-.375-.139C1300.1,225.711,1299.509,225.719,1298.916,225.719Zm-1.781-5.767c-.108.038-.2.069-.294.1a.723.723,0,0,0-.42,1.107c.3.6.606,1.207.906,1.812.054.11.1.186.255.184.86-.009,1.72,0,2.58-.011a.3.3,0,0,0,.22-.142q.494-.955.965-1.923a.687.687,0,0,0-.267-.936,4.35,4.35,0,0,0-.483-.207c-.14.4-.266.767-.4,1.135-.11.3-.323.425-.571.335s-.34-.315-.235-.62c.168-.489.344-.975.515-1.463.079-.225.154-.452.239-.7a4.312,4.312,0,0,0-2.561.018l.1.3c.213.606.427,1.211.637,1.817a.765.765,0,0,1,.061.266.4.4,0,0,1-.339.408.411.411,0,0,1-.488-.292C1297.413,220.747,1297.278,220.354,1297.135,219.952Zm1.756,4.058c-.694,0-1.387,0-2.081,0-.322,0-.506.159-.507.425s.187.428.506.428q2.056,0,4.111,0c.32,0,.507-.162.507-.427s-.185-.425-.506-.426C1300.244,224.009,1299.567,224.01,1298.89,224.01Z" transform="translate(-1286.025 -212.063)" fill="#fff"/>
                          <path id="Path_61833" data-name="Path 61833" d="M1445.885,439.168c-.071.085-.147.258-.267.3a.832.832,0,0,1-.461-.064c-.068-.021-.1-.127-.167-.181a.4.4,0,0,0-.488-.055.352.352,0,0,0-.2.441.868.868,0,0,0,.32.335c.073.05.195.027.293.044a1.274,1.274,0,0,1,.417,2.37.39.39,0,0,0-.227.292.414.414,0,0,1-.8-.008.42.42,0,0,0-.225-.294,2.057,2.057,0,0,1-.454-.42.42.42,0,0,1,.668-.508c.164.2.345.325.6.2a.386.386,0,0,0,.218-.46c-.059-.29-.286-.332-.532-.355a1.272,1.272,0,0,1-.536-2.362.433.433,0,0,0,.266-.321.413.413,0,0,1,.793.009.4.4,0,0,0,.242.309A.948.948,0,0,1,1445.885,439.168Z" transform="translate(-1431.868 -422.881)" fill="#fff"/>
                        </svg>

                    </span>
                    Manage My funds</a>
                    <ul class="collapse list-unstyled" id="Submenu-1" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#Submenu-2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                        <svg id="Activation" xmlns="http://www.w3.org/2000/svg" width="16.548" height="24.23" viewBox="0 0 16.548 24.23">
                          <path id="Path_61834" data-name="Path 61834" d="M2042.536,138.642a5.3,5.3,0,0,1,1.489,2.064,6.151,6.151,0,0,1-1.234,6.7c-.243.248-.489.282-.707.1a.479.479,0,0,1,.02-.744,5.04,5.04,0,0,0,1.345-2.5,5.136,5.136,0,0,0-1.276-4.685,1.133,1.133,0,0,1-.237-.344c-.081-.223.031-.4.316-.588Z" transform="translate(-2032.225 -138.642)" fill="#fff"/>
                          <path id="Path_61835" data-name="Path 61835" d="M1851.073,138.642c.421.27.449.546.1.916a5.206,5.206,0,0,0-.013,7.136c.032.034.066.068.1.1a.477.477,0,0,1,.006.7.465.465,0,0,1-.693-.049,5.87,5.87,0,0,1-1.653-3.152,6.039,6.039,0,0,1,1.577-5.389,3.585,3.585,0,0,1,.3-.261Z" transform="translate(-1848.804 -138.642)" fill="#fff"/>
                          <path id="Path_61836" data-name="Path 61836" d="M1910.578,171.445a1.935,1.935,0,0,1,2.838,1.426,1.915,1.915,0,0,1,2.828,1.4c.208-.064.4-.144.606-.185a1.862,1.862,0,0,1,2.234,1.741,14.672,14.672,0,0,1-2.36,8.471,4.211,4.211,0,0,1-.542.684.8.8,0,0,1-.464.219c-.432.03-.867.013-1.3.009a.475.475,0,1,1,0-.944c.308,0,.616-.012.922,0a.386.386,0,0,0,.367-.189,12.543,12.543,0,0,0,2.063-4.627,14.463,14.463,0,0,0,.38-3.445.948.948,0,1,0-1.892-.037c-.012.326-.2.535-.477.533a.482.482,0,0,1-.469-.539c0-.465,0-.93,0-1.4a.947.947,0,1,0-1.892-.069.473.473,0,1,1-.945-.022c0-.441,0-.883,0-1.325a.947.947,0,1,0-1.891-.006c0,.4,0,.8,0,1.206s-.164.632-.468.636-.478-.222-.478-.625q0-3.654,0-7.309a1.733,1.733,0,0,0-.017-.33.944.944,0,0,0-1.873.2q-.005,2.968,0,5.937c0,.52-.006,1.041,0,1.561a.569.569,0,0,1-.32.556,2.02,2.02,0,0,0-1.1,1.9,21.434,21.434,0,0,0,.08,2.407,8.587,8.587,0,0,0,1.462,3.553c.29.449.619.874.942,1.3a.369.369,0,0,0,.251.122c.331.014.662,0,.993.007a.475.475,0,1,1,0,.944c-.441,0-.884.016-1.324-.007a.632.632,0,0,1-.412-.181,11.7,11.7,0,0,1-2.807-5.358,11.572,11.572,0,0,1-.129-1.976,8.586,8.586,0,0,1,.088-1.575,2.684,2.684,0,0,1,1.156-1.75.371.371,0,0,0,.171-.35q-.006-2.8,0-5.606a.373.373,0,0,0-.162-.332,3.31,3.31,0,0,1,2.3-5.9,3.309,3.309,0,0,1,1.811,5.887.417.417,0,0,0-.175.374C1910.582,169.438,1910.578,170.431,1910.578,171.445Zm.023-4.619a2.308,2.308,0,0,0-.384-3.139,2.368,2.368,0,0,0-3.36.3,2.252,2.252,0,0,0-.071,2.831,1.9,1.9,0,0,1,1.8-1.8C1909.627,164.973,1910.312,165.59,1910.6,166.827Z" transform="translate(-1902.538 -160.993)" fill="#fff"/>
                          <path id="Path_61837" data-name="Path 61837" d="M2033.669,603.222a.471.471,0,1,1-.457-.474A.477.477,0,0,1,2033.669,603.222Z" transform="translate(-2023.502 -579.469)" fill="#fff"/>
                        </svg>
                    </span>
                    Activation</a>
                    <ul class="collapse list-unstyled" id="Submenu-2" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#Submenu-3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                        <svg id="My_members" data-name="My members" xmlns="http://www.w3.org/2000/svg" width="20.377" height="21.621" viewBox="0 0 20.377 21.621">
                          <path id="Path_61838" data-name="Path 61838" d="M2356.8,431.076a9.952,9.952,0,0,1-4.281-.894,3.986,3.986,0,0,1-1.321-.988,2.119,2.119,0,0,1-.533-1.451,7.1,7.1,0,0,1,1.718-4.594.836.836,0,1,1,1.266,1.075,5.628,5.628,0,0,0-1.323,3.395.7.7,0,0,0,.339.706,7.131,7.131,0,0,0,1.44.688,9.325,9.325,0,0,0,6.234-.233c1.357-.559,1.223-.774,1.047-1.94a5.2,5.2,0,0,0-1.251-2.638.834.834,0,1,1,1.247-1.1,7.029,7.029,0,0,1,1.754,4.787,2.048,2.048,0,0,1-.629,1.412,5.142,5.142,0,0,1-2.273,1.3A11.461,11.461,0,0,1,2356.8,431.076Z" transform="translate(-2350.669 -409.454)" fill="#fff"/>
                          <path id="Path_61839" data-name="Path 61839" d="M2549.646,161.724a4.157,4.157,0,1,1,4.111,4.164A4.161,4.161,0,0,1,2549.646,161.724Zm6.651.017a2.494,2.494,0,1,0-2.5,2.484A2.5,2.5,0,0,0,2556.3,161.741Z" transform="translate(-2539.667 -157.575)" fill="#fff"/>
                          <path id="Path_61840" data-name="Path 61840" d="M2392.148,261.2a4.157,4.157,0,1,1,4.134,4.142A4.163,4.163,0,0,1,2392.148,261.2Zm4.157,2.478a2.494,2.494,0,1,0-2.494-2.467A2.5,2.5,0,0,0,2396.3,263.679Z" transform="translate(-2390.068 -252.04)" fill="#fff"/>
                          <path id="Path_61841" data-name="Path 61841" d="M2617.161,331.48h-.286a.841.841,0,0,1-.9-.833.832.832,0,0,1,.878-.829,10.137,10.137,0,0,0,2.518-.317,4.785,4.785,0,0,0,1.626-.721.844.844,0,0,0,.386-.793,5.529,5.529,0,0,0-1.35-3.383.866.866,0,0,1-.241-.809.791.791,0,0,1,.607-.613.81.81,0,0,1,.842.276,6.8,6.8,0,0,1,1.585,3.025,11.719,11.719,0,0,1,.211,1.539,2.166,2.166,0,0,1-.8,1.86,5.557,5.557,0,0,1-2.611,1.263c-.808.178-1.636.265-2.455.393Z" transform="translate(-2602.667 -314.851)" fill="#fff"/>
                        </svg>

                    </span>
                    My Members</a>
                    <ul class="collapse list-unstyled" id="Submenu-3" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#Submenu-4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                        <svg id="My_members" data-name="My members" xmlns="http://www.w3.org/2000/svg" width="20.377" height="21.621" viewBox="0 0 20.377 21.621">
                          <path id="Path_61838" data-name="Path 61838" d="M2356.8,431.076a9.952,9.952,0,0,1-4.281-.894,3.986,3.986,0,0,1-1.321-.988,2.119,2.119,0,0,1-.533-1.451,7.1,7.1,0,0,1,1.718-4.594.836.836,0,1,1,1.266,1.075,5.628,5.628,0,0,0-1.323,3.395.7.7,0,0,0,.339.706,7.131,7.131,0,0,0,1.44.688,9.325,9.325,0,0,0,6.234-.233c1.357-.559,1.223-.774,1.047-1.94a5.2,5.2,0,0,0-1.251-2.638.834.834,0,1,1,1.247-1.1,7.029,7.029,0,0,1,1.754,4.787,2.048,2.048,0,0,1-.629,1.412,5.142,5.142,0,0,1-2.273,1.3A11.461,11.461,0,0,1,2356.8,431.076Z" transform="translate(-2350.669 -409.454)" fill="#fff"/>
                          <path id="Path_61839" data-name="Path 61839" d="M2549.646,161.724a4.157,4.157,0,1,1,4.111,4.164A4.161,4.161,0,0,1,2549.646,161.724Zm6.651.017a2.494,2.494,0,1,0-2.5,2.484A2.5,2.5,0,0,0,2556.3,161.741Z" transform="translate(-2539.667 -157.575)" fill="#fff"/>
                          <path id="Path_61840" data-name="Path 61840" d="M2392.148,261.2a4.157,4.157,0,1,1,4.134,4.142A4.163,4.163,0,0,1,2392.148,261.2Zm4.157,2.478a2.494,2.494,0,1,0-2.494-2.467A2.5,2.5,0,0,0,2396.3,263.679Z" transform="translate(-2390.068 -252.04)" fill="#fff"/>
                          <path id="Path_61841" data-name="Path 61841" d="M2617.161,331.48h-.286a.841.841,0,0,1-.9-.833.832.832,0,0,1,.878-.829,10.137,10.137,0,0,0,2.518-.317,4.785,4.785,0,0,0,1.626-.721.844.844,0,0,0,.386-.793,5.529,5.529,0,0,0-1.35-3.383.866.866,0,0,1-.241-.809.791.791,0,0,1,.607-.613.81.81,0,0,1,.842.276,6.8,6.8,0,0,1,1.585,3.025,11.719,11.719,0,0,1,.211,1.539,2.166,2.166,0,0,1-.8,1.86,5.557,5.557,0,0,1-2.611,1.263c-.808.178-1.636.265-2.455.393Z" transform="translate(-2602.667 -314.851)" fill="#fff"/>
                        </svg>
                    </span>
                    Accumulated profiles</a>
                    <ul class="collapse list-unstyled" id="Submenu-4" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#Submenu-5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25.632" height="25.106" viewBox="0 0 25.632 25.106">
                          <path id="Accumulated_profiles" data-name="Accumulated profiles" d="M2853.483,163.681a1.26,1.26,0,0,0,.314-1.038c-.011-2.695-.006-5.389-.006-8.084,0-.745.3-1.051,1.045-1.051h3.4v-.293q0-1.727,0-3.454a.866.866,0,0,1,.97-.975c1.051-.005,2.1,0,3.154,0h.321v-.3q0-1.689,0-3.379c0-.728.31-1.039,1.032-1.039h3.4v-.317q0-1.677,0-3.354c0-.724.316-1.041,1.032-1.041q1.59,0,3.179,0a.87.87,0,0,1,.981.986q0,3.341,0,6.682a1.558,1.558,0,0,1-.005.2.369.369,0,0,1-.731.032,1.31,1.31,0,0,1-.014-.274c0-2.186,0-4.372,0-6.557,0-.253-.066-.328-.322-.324-1.009.014-2.019.006-3.028.006-.345,0-.346,0-.346.344q0,6.269,0,12.539V158.1a1.408,1.408,0,0,0,.19-.1c1.125-.848,2.25-1.694,3.367-2.553a.446.446,0,0,0,.129-.317c.008-1.994.006-3.988.006-5.982,0-.384.12-.571.369-.577s.382.185.382.586v5.426l.06.043,2.081-2.155c-.382-.4-.74-.766-1.1-1.138a1.4,1.4,0,0,1-.206-.25.525.525,0,0,1,.325-.774,1.328,1.328,0,0,1,.322-.032q2.29,0,4.58,0c.547,0,.74.192.74.734q0,2.4,0,4.805c0,.042,0,.083,0,.125a.54.54,0,0,1-.336.537.525.525,0,0,1-.6-.12c-.375-.342-.746-.689-1.1-1.013-.852.68-1.669,1.366-2.522,2a35.65,35.65,0,0,1-5.575,3.375c-.258.128-.482.071-.58-.139s-.007-.406.262-.539a37.336,37.336,0,0,0,4.115-2.366,29.3,29.3,0,0,0,3.713-2.878c.462-.426.656-.42,1.124.013l.724.672v-4.44h-4.22l.849.886c.381.4.379.619.019,1.029a32.323,32.323,0,0,1-8.026,6.595,34.754,34.754,0,0,1-8.659,3.57,8.628,8.628,0,0,0-1.053.319c.329-.043.659-.078.987-.129a36.03,36.03,0,0,0,8.56-2.426c.031-.013.063-.024.094-.036.29-.109.5-.042.586.185s-.031.4-.31.514a37.832,37.832,0,0,1-6.075,1.976,37.442,37.442,0,0,1-6.929.925.682.682,0,0,1-.682-.475Zm9.951-3.161c.123-.053.2-.08.274-.118,1.062-.556,2.122-1.117,3.187-1.667a.374.374,0,0,0,.226-.389q-.009-6.618,0-13.237v-.294h-3.328c-.354,0-.355,0-.355.358V160.52Zm-.763-10.971c-.1-.005-.178-.013-.259-.013-1.034,0-2.068.006-3.1-.006-.249,0-.326.065-.326.323q.012,6.017.006,12.035c0,.079.007.158.012.253.079-.019.136-.028.189-.047,1.083-.38,2.165-.766,3.25-1.14a.316.316,0,0,0,.247-.36q-.011-5.392-.006-10.784C2862.682,149.73,2862.676,149.648,2862.671,149.549Zm-4.44,4.721c-.094,0-.167-.011-.241-.011-1.051,0-2.1.005-3.152-.005-.229,0-.3.064-.3.3q.011,4.177.005,8.355c0,.077.012.153.023.276l3.664-.787Z" transform="translate(-2853.483 -139.351)" fill="#fff"/>
                        </svg>

                    </span>
                    Secure Accumulated profiles</a>
                    <ul class="collapse list-unstyled" id="Submenu-5" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#Submenu-6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <span class="menu-icon">
                       <svg id="Deposit_wallet_Transfer" data-name="Deposit wallet Transfer" xmlns="http://www.w3.org/2000/svg" width="23.134" height="23.878" viewBox="0 0 23.134 23.878">
                      <path id="Path_61842" data-name="Path 61842" d="M3538.343,129.915h-19.495c-.042-.016-.083-.037-.127-.049a1.505,1.505,0,0,1-1.13-1.478q-.005-5.794,0-11.587a1.441,1.441,0,0,1,.721-1.28.3.3,0,0,0,.164-.293,1.16,1.16,0,0,1,1.268-1.255c.246,0,.492,0,.736,0,.016-.075.03-.12.035-.166.16-1.615.325-3.23.475-4.847a1.145,1.145,0,0,1,1.38-1.141c1.669.172,3.338.335,5.008.5.274.027.431.163.415.372s-.2.333-.483.305q-2.539-.251-5.079-.5c-.358-.034-.511.087-.547.438q-.233,2.283-.456,4.567-.087.877-.171,1.752c.413.083.421.075.459-.307q.184-1.867.37-3.733a.8.8,0,0,1,.51-.719,2.043,2.043,0,0,0,.944-.766.788.788,0,0,1,.784-.354c.827.083,1.654.162,2.481.245.273.027.424.175.4.384s-.194.314-.475.287c-.789-.077-1.577-.152-2.365-.236a.307.307,0,0,0-.33.149,2.334,2.334,0,0,1-1.049.859.341.341,0,0,0-.233.329c-.062.673-.132,1.345-.2,2.017-.06.616-.118,1.232-.181,1.881.484,0,.948-.009,1.412,0a.41.41,0,0,0,.4-.211q2.827-4.164,5.661-8.322a1.617,1.617,0,0,1,.869-.726h.42a2.919,2.919,0,0,1,.417.2q3.46,2.349,6.912,4.709a1.081,1.081,0,0,1,.3,1.54c-.28.429-.575.848-.863,1.272-.042.061-.078.126-.136.22.115,0,.193,0,.269,0a1.151,1.151,0,0,1,1.108.927c.031.166.008.341.026.511a.361.361,0,0,0,.089.219,1.622,1.622,0,0,1,.556,1.3c-.008.94,0,1.88,0,2.821v.267h.28a.769.769,0,0,1,.841.839q0,1.748,0,3.5a.766.766,0,0,1-.812.823c-.1,0-.195,0-.308,0v.287c0,.971,0,1.943,0,2.914a1.513,1.513,0,0,1-1.129,1.48A1.355,1.355,0,0,0,3538.343,129.915Zm-20.046-2.46a9.287,9.287,0,0,0,.015,1.156.721.721,0,0,0,.321.456,1.292,1.292,0,0,0,.636.158q9.326.012,18.653.006a2.481,2.481,0,0,0,.279-.01.768.768,0,0,0,.688-.633c.036-.366.008-.739.008-1.132H3522.52a2.252,2.252,0,0,1-.279-.007.332.332,0,0,1,.008-.66,2.609,2.609,0,0,1,.28-.005H3538.9v-1.6h-.291c-.948,0-1.9.006-2.845,0a2.578,2.578,0,0,1-.2-5.152c1.026-.019,2.052-.006,3.078-.007h.274v-1.571h-20.623v8.329h.27c.5,0,.995,0,1.492,0,.249,0,.386.129.385.338s-.136.325-.391.333c-.1,0-.2,0-.3,0Zm20.618-9.72c0-.271,0-.519,0-.767,0-.694-.3-1-.991-1h-18.655c-.078,0-.156,0-.233,0a.79.79,0,0,0-.735.641c-.036.366-.008.739-.008,1.119Zm-5.589-2.445c.364,0,.706.007,1.046-.006a.306.306,0,0,0,.193-.133c.394-.568.786-1.138,1.165-1.716a.37.37,0,0,0,.027-.308,2.577,2.577,0,0,1-.262-1.378.312.312,0,0,0-.162-.324q-1.689-1.142-3.37-2.3a.292.292,0,0,0-.34-.025,2.372,2.372,0,0,1-1.332.251.342.342,0,0,0-.364.171q-1.889,2.788-3.789,5.568c-.036.053-.065.112-.114.2.527,0,1.017-.006,1.505,0,.163,0,.207-.06.228-.212a2.8,2.8,0,0,1,4.372-1.894A2.839,2.839,0,0,1,3533.326,115.291Zm4.365,9.213h0c.691,0,1.382-.008,2.073,0,.212,0,.281-.053.279-.271q-.015-1.63,0-3.261c0-.234-.08-.282-.295-.281-1.3.009-2.609,0-3.913.007a2.612,2.612,0,0,0-.578.054,1.9,1.9,0,0,0,.406,3.745C3536.339,124.512,3537.015,124.5,3537.69,124.5Zm-13.013-9.243a.565.565,0,0,0,.709-.257c.555-.861,1.146-1.7,1.723-2.547q1.148-1.685,2.3-3.37a.8.8,0,0,1,.779-.413,2.144,2.144,0,0,0,1.24-.225.749.749,0,0,1,.8.042q1.814,1.227,3.62,2.466a.739.739,0,0,1,.331.726,2.028,2.028,0,0,0,.225,1.194.8.8,0,0,1-.055.879l-.667.983c-.116.171-.23.342-.353.525a.568.568,0,0,0,.707-.261c.6-.932,1.242-1.841,1.868-2.758.264-.388.233-.567-.148-.827l-6.642-4.526c-.4-.27-.566-.235-.84.167l-4.946,7.258Zm3.746.011h4.193a2.105,2.105,0,0,0-4.193,0Zm9.838.011c.029-.305-.043-.524-.261-.567a5.644,5.644,0,0,0-.9-.048c-.023,0-.053.031-.069.054-.121.175-.239.352-.38.56Zm-17.841-.606a.831.831,0,0,0-.1-.015c-.232,0-.465-.008-.7,0-.336.014-.51.267-.424.627h.617C3520.385,115.292,3520.385,115.292,3520.42,114.677Z" transform="translate(-3517.589 -106.037)" fill="#fff"/>
                      <path id="Path_61843" data-name="Path 61843" d="M3855.163,410.314a1.378,1.378,0,1,1-1.374-1.376A1.364,1.364,0,0,1,3855.163,410.314Zm-1.376.693a.7.7,0,0,0,.7-.694.719.719,0,0,0-.7-.7.7.7,0,0,0-.7.7A.689.689,0,0,0,3853.787,411.007Z" transform="translate(-3835.614 -393.746)" fill="#fff"/>
                    </svg>
  
                    </span>  
                    Deposit wallet Transfer</a>
                    <ul class="collapse list-unstyled" id="Submenu-6" data-parent="#accordion">
                        <li>
                            <a href="#">My Panel</a>
                        </li>
                        <li>
                            <a href="#">My Profile</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                    <span class="menu-icon">
                       <svg xmlns="http://www.w3.org/2000/svg" width="20.199" height="23.879" viewBox="0 0 20.199 23.879">
                      <g id="Group_6145" data-name="Group 6145" transform="translate(-3351.396 653.838)">
                        <path id="Path_61847" data-name="Path 61847" d="M3357.763-629.959q-2.254-.743-4.507-1.487a2.512,2.512,0,0,1-1.859-2.569q0-7.883,0-15.767a2.517,2.517,0,0,1,1.872-2.583c1.326-.438,2.649-.886,3.976-1.323a2.492,2.492,0,0,1,3.252,1.564c.052.14.128.146.242.146,1.073,0,2.146-.008,3.219,0a2.513,2.513,0,0,1,2.5,2,2.53,2.53,0,0,1,.06.532c.006,1.081.01,2.161,0,3.242a.839.839,0,0,1-1.085.845.83.83,0,0,1-.591-.852c0-1.018,0-2.037,0-3.055,0-.729-.307-1.038-1.031-1.038h-3.153v16.793h.23q1.493,0,2.985,0a.87.87,0,0,0,.969-.964c0-1.089,0-2.177,0-3.265a.822.822,0,0,1,1.121-.8.749.749,0,0,1,.524.706c.008,1.259.042,2.521-.018,3.777a2.453,2.453,0,0,1-2.414,2.224c-1.08.018-2.161.005-3.242.006h-.266l-.074.2a2.5,2.5,0,0,1-1.8,1.612c-.058.016-.114.038-.171.058Zm1.2-11.944q0-4.63,0-9.261a.867.867,0,0,0-1.265-.907q-1.965.656-3.93,1.315a.861.861,0,0,0-.678.955q0,1.668,0,3.336,0,6.217,0,12.434a.873.873,0,0,0,.7.988c1.325.443,2.649.889,3.976,1.323a1.12,1.12,0,0,0,.522.051.843.843,0,0,0,.677-.949Q3358.961-637.261,3358.96-641.9Z" fill="#fff"/>
                        <path id="Path_61848" data-name="Path 61848" d="M3535.178-509.9h-.3q-2.5,0-4.992,0a.849.849,0,0,1-.921-.686.828.828,0,0,1,.7-.981,2.764,2.764,0,0,1,.326-.011h5.239l-.923-.919a.819.819,0,0,1-.264-.716.8.8,0,0,1,.552-.688.808.808,0,0,1,.881.2c.427.42.848.845,1.271,1.268.352.352.706.7,1.054,1.057a.855.855,0,0,1,0,1.3q-1.133,1.143-2.276,2.276a.855.855,0,0,1-1.248.05.852.852,0,0,1,.059-1.263q.4-.406.806-.81A.44.44,0,0,0,3535.178-509.9Z" transform="translate(-166.503 -131.182)" fill="#fff"/>
                      </g>
                    </svg>
                    </span>    
                    Exit
                    </a>
                </li>
            </ul>

            <!--<ul class="list-unstyled CTAs">
                <li>
                    <a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a>
                </li>
                <li>
                    <a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a>
                </li>
            </ul>-->
        </nav>
    </div>
   
</template>

<script>


export default {
  name: 'User-Navbar',
  
}
</script>


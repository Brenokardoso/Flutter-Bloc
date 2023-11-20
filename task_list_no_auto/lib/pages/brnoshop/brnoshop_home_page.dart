// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_list_no_auto/pages/brnoshop/bloc/brnoshop_bloc.dart';

class BrnoShopHomePage extends StatefulWidget {
  const BrnoShopHomePage({super.key});

  @override
  State<BrnoShopHomePage> createState() => _BrnoShopHomePageState();
}

class _BrnoShopHomePageState extends State<BrnoShopHomePage> {
  final lista_do_link_das_imagens = [
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/j/o/jogo_chave_fenda-phillips_6_pe_as_132102b_mayle_ferpam_aplica_o-compressed.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/k/i/kit_parafusos_para_aglomerado_e_mdf_bemfixa_ferpam.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/f1bc2322388b72c78a669345b629a44a/a/d/adaptador_de_inc_ndio_2.1_segurimax_1.png",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/c/h/chave_autoajust_vel_.ferpam.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/f1bc2322388b72c78a669345b629a44a/c/h/chave_de_impacto_gdx_400_ganhe_carregador_e_bateria_1_1_.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/c/a/caixa_organizadora_pequena_011594811_carbografite.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/j/o/jogo_de_soquete_sextavado_crv_1-2_mtx_ferpam_.jpg",
    "https://loja100limits.vteximg.com.br/arquivos/ids/157263-1000-1000/CHAVE-RODA.jpg?v=637327504145430000",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/9/e/9ee268e1e2_1.jpg",
    "https://www.ferpam.com.br/media/catalog/product/cache/7f3660905effcfdd27a3ab16f16ab037/b/l/blz_85888bj_frnt_mm.jpg",
  ];
  final lista_nome_das_ferramentas = [
    "Chave De Fenda",
    "Parafusos",
    "Fita",
    "Chave Inglesa",
    "Furadeira Top",
    "Caixa para Componentes",
    "Alguma coisa massa",
    "Chave de Boca",
    "Assoprador",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BrnoShop"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: "HomeShopPage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Compras",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Pagamento",
          ),
        ],
      ),
      body: BlocConsumer<BrnoShopBloc, BrnoShopState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Wrap(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: lista_nome_das_ferramentas.length,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                lista_do_link_das_imagens[index],
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.build_sharp),
                          title: Text(lista_nome_das_ferramentas[index]),
                          subtitle: Text("12\$"),
                          trailing: IconButton(
                            onPressed: () {
                              context
                                  .read<BrnoShopBloc>()
                                  .add(BrnoShopEventAddProduto());

                              BrnoShopEventAddProduto();
                            },
                            icon: Icon(Icons.shop),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) => print("Class Rebuildada"),
      ),
    );
  }
}

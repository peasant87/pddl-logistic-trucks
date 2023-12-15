# pddl-logistic-trucks
pddl-logistic-trucks

Neste projeto foi construído um cenário hipotético onde, em uma grande empresa de logística, existe um complexo sistema de transporte para gerenciar a movimentação de cargas diversas entre múltiplos locais. Este sistema é composto por uma frota de caminhões, um grupo de motoristas experientes e uma variedade de cargas, cada uma pertencendo a categorias específicas. A empresa opera em uma rede de locais, incluindo armazéns, centros de distribuição e pontos de entrega.


## Elementos do Sistema
**Cargas**: Diversos tipos de cargas, como eletrônicos, alimentos e materiais de construção, cada um com requisitos específicos de transporte.

**Caminhões**: Uma frota diversificada, com alguns caminhões especializados em certos tipos de cargas.

**Motoristas**: Profissionais treinados, cada um qualificado para lidar com diferentes categorias de cargas.

**Locais**: Incluem pontos de coleta, centros de distribuição e destinos finais.

## Operações
**Carregamento de Cargas**: Quando uma carga precisa ser transportada, ela é inicialmente carregada em um caminhão compatível. Esta ação requer que a carga, o caminhão, o motorista e a categoria sejam compatíveis. Por exemplo, um motorista treinado em produtos perecíveis carrega um caminhão refrigerado com alimentos em um centro de distribuição.

 **Transporte de Cargas**: Os motoristas dirigem os caminhões carregados para os destinos designados. Esta etapa é crítica e incide em custos, medidos pela função total-cost. Decisões eficientes de rota e alocação de recursos são fundamentais aqui para minimizar os custos operacionais.
 
 **Descarregamento de Cargas**: Ao chegar ao destino, a carga é descarregada do caminhão. Esta ação também requer que o caminhão, a carga e o motorista estejam no local correto. Por exemplo, um caminhão carregado com materiais de construção chega a um canteiro de obras, onde a carga é então descarregada para uso.
Gestão de Custos.

Cada movimento de um caminhão, seja carregando ou descarregando cargas, é associado a um custo. A empresa busca otimizar essas operações para manter o custo total o mais baixo possível. Decisões como qual caminhão usar, que motorista deve conduzir e a rota a ser seguida são cruciais para a eficiência do custo.

#include <QCoreApplication>
#include "vectorsparselineformat.h"
#include <fstream>

int main()
{
    std::fstream fv1("vector1.txt"), fv2("vector2.txt");
    std::ofstream sum("sum.txt");

    VectorSparseLineFormat v1, v2, v3;
    v1.readAsSLF(fv1);
    v2.readAsSLF(fv2);

    std::cout << "v1:\n";
    v1.writeAsSLF(std::cout);
    std::cout << '\n';
    v1.writeAsVector(std::cout);
    std::cout << '\n';

    std::cout << "v2:\n";
    v2.writeAsSLF(std::cout);
    std::cout << '\n';
    v2.writeAsVector(std::cout);
    std::cout << '\n';

    v3 = sumExtendedRealPointerMethod(v1, v2);

    v3.writeAsSLF(sum);

    std::cout << "v3\n";
    v3.writeAsSLF(std::cout);
    std::cout << '\n';
    v3.writeAsVector(std::cout);
    std::cout << '\n';

    return 0;
}

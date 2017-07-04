def print_data(attributes,data):
    attributes=list(map(float,attributes[:4]))
    for values in attributes:
        print(values,file=data,end=",")

def main():
    class_1="Iris-setosa"
    class_2="Iris-versicolor"
    class_3="Iris-virginica"
    fp=open("bezdekIris.data.txt","r")
    data=open("bezdekIrisdata.txt","w")
    for values in fp:
        attributes=values.strip().split(",")
        if attributes[-1]==class_1:
            print_data(attributes,data)
            print(1,file=data)
        elif attributes[-1]==class_2:
            print_data(attributes,data)
            print(2,file=data)
        elif attributes[-1]==class_3:
            print_data(attributes,data)
            print(3,file=data)

if __name__=='__main__':
    main()

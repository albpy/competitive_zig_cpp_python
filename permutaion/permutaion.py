################In place swapping

def count_to_make_permute(arr: list) -> int:
    operations = 0
    arr.sort()
    ind = 0
    for i in range(len(arr)):
        ind+=1
        if arr[i] > 0 and len(arr) < 10e5:
            while (arr[i]!=ind):
                if arr[i] < ind:
                    arr[i] += 1
                    operations += 1
                if arr[i] > ind:
                    arr[i] -= 1
                    operations += 1
                else:
                    operations += 0

    return operations

if __name__ == "__main__":
    arr = [1,2,2,3]
    operations = count_to_make_permute(arr)
    print(operations)
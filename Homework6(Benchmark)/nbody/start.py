import subprocess
import os
os.chdir("C:\\Users\\Vincenzo Pascarella\\Desktop\\nbody")
def callNBody(N):
    os.system(f"nbodyprova.exe {N} >> NREP.txt")
    #print (f"Command output : {macroNow}")

def main():
    f2 = 'NREP.txt'
    #SIZE = [5000, 50000, 100000, 500000]
    N = 1000000

    nRighe = 0
    with open(f2) as file:
        nRighe = len(file.readlines())

    if(nRighe>=200):
        return 0
    else:
        for i in range(0,5):
            callNBody(N)
        
                
        os.system("shutdown /r /t 5")
    


    

    

if __name__=="__main__":
    main()
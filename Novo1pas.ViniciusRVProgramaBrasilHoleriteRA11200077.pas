// Função para representar uma máquina industrial
class IndustrialMachine {
    constructor(name) {
        this.name = name;
        this.isRunning = false;
        this.status = 'offline';
    }

    // Ligar a máquina
    startMachine() {
        if (!this.isRunning) {
            this.isRunning = true;
            this.status = 'running';
            console.log(`${this.name} is now running.`);
        } else {
            console.log(`${this.name} is already running.`);
        }
    }

    // Desligar a máquina
    stopMachine() {
        if (this.isRunning) {
            this.isRunning = false;
            this.status = 'offline';
            console.log(`${this.name} has been stopped.`);
        } else {
            console.log(`${this.name} is already offline.`);
        }
    }

    // Verificar o status da máquina
    checkStatus() {
        console.log(`Status of ${this.name}: ${this.status}`);
    }
}

// Simulação do controle de máquinas
const machine1 = new IndustrialMachine('Machine 1');
const machine2 = new IndustrialMachine('Machine 2');

// Automação das máquinas
function automateMachines() {
    machine1.startMachine();
    machine2.startMachine();

    // Checar o status após iniciar
    machine1.checkStatus();
    machine2.checkStatus();

    // Simular uma parada das máquinas após algum tempo
    setTimeout(() => {
        machine1.stopMachine();
        machine2.stopMachine();

        // Checar o status após parar
        machine1.checkStatus();
        machine2.checkStatus();
    }, 5000); // Parar após 5 segundos
}

// Executar a automação
automateMachines();

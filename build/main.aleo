program staking_maxpia_0713.aleo;

record Rewards:
    owner as address.private;
    amount as u32.private;
    last_update_block as u32.private;

record Token:
    owner as address.private;
    amount as u32.private;


function mint_to_staking_pool:
    input r0 as address.private;
    input r1 as u32.private;
    cast r0 r1 into r2 as Token.record;
    output r2 as Token.record;


function mint_to_me:
    input r0 as u32.private;
    cast self.caller r0 into r1 as Token.record;
    output r1 as Token.record;


function stake:
    input r0 as address.private;
    input r1 as u32.private;
    input r2 as u32.private;
    input r3 as u32.private;
    input r4 as u32.private;
    input r5 as u32.private;
    input r6 as u32.private;
    lte r3 r2 into r7;
    assert.eq r7 true;
    lte r4 r5 into r8;
    assert.eq r8 true;
    add r1 r3 into r9;
    cast r0 r9 into r10 as Token.record;
    sub r2 r3 into r11;
    cast self.caller r11 into r12 as Token.record;
    sub r5 r4 into r13;
    mul r13 10u32 into r14;
    add r6 r14 into r15;
    cast self.caller r15 r5 into r16 as Rewards.record;
    output r10 as Token.record;
    output r12 as Token.record;
    output r16 as Rewards.record;


function withdraw:
    input r0 as address.private;
    input r1 as u32.private;
    input r2 as u32.private;
    input r3 as u32.private;
    input r4 as u32.private;
    input r5 as u32.private;
    input r6 as u32.private;
    lte r3 r1 into r7;
    assert.eq r7 true;
    sub r1 r3 into r8;
    cast r0 r8 into r9 as Token.record;
    add r2 r3 into r10;
    cast self.caller r10 into r11 as Token.record;
    sub r5 r4 into r12;
    mul r12 10u32 into r13;
    add r6 r13 into r14;
    cast self.caller r14 r5 into r15 as Rewards.record;
    output r9 as Token.record;
    output r11 as Token.record;
    output r15 as Rewards.record;


function main:
    input r0 as u32.public;
    input r1 as u32.private;
    add r0 r1 into r2;
    output r2 as u32.private;

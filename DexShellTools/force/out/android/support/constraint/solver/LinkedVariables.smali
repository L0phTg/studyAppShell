.class public Landroid/support/constraint/solver/LinkedVariables;
.super Ljava/lang/Object;
.source "LinkedVariables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/LinkedVariables$Link;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static sCreation:I


# instance fields
.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field epsilon:F

.field private head:Landroid/support/constraint/solver/LinkedVariables$Link;

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Landroid/support/constraint/solver/LinkedVariables;->sCreation:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .registers 5
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    .line 41
    iput-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 43
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Landroid/support/constraint/solver/LinkedVariables;->epsilon:F

    .line 47
    iput-object p1, p0, Landroid/support/constraint/solver/LinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 48
    iput-object p2, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 49
    return-void
.end method


# virtual methods
.method public final add(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 8
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v4, 0x0

    .line 340
    cmpl-float v2, p2, v4

    if-nez v2, :cond_9

    .line 341
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 384
    :cond_8
    :goto_8
    return-void

    .line 344
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 345
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v1, 0x0

    .line 346
    .local v1, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_c
    if-eqz v0, :cond_4b

    .line 347
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v2, p1, :cond_3f

    .line 348
    iget v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    add-float/2addr v2, p2

    iput v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 349
    iget v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_8

    .line 350
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    if-ne v0, v2, :cond_3a

    .line 351
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 355
    :goto_25
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 356
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 357
    iget v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    goto :goto_8

    .line 353
    :cond_3a
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_25

    .line 361
    :cond_3f
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v2, v3, :cond_48

    .line 362
    move-object v1, v0

    .line 364
    :cond_48
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_c

    .line 366
    :cond_4b
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    check-cast v0, Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 367
    .restart local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v0, :cond_5c

    .line 368
    new-instance v0, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v0}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 370
    .restart local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_5c
    iput p2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 371
    iput-object p1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 372
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 373
    if-eqz v1, :cond_78

    .line 374
    iget-object v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 375
    iput-object v0, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 380
    :goto_6b
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    if-nez v2, :cond_71

    .line 381
    iput-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 383
    :cond_71
    iget v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    goto :goto_8

    .line 377
    :cond_78
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 378
    iput-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_6b
.end method

.method public final clear()V
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 388
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_f

    .line 389
    move-object v1, v0

    .line 390
    .local v1, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 391
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_2

    .line 393
    .end local v1    # "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_f
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 394
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    .line 395
    return-void
.end method

.method public final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 399
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_d

    .line 400
    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v1, p1, :cond_a

    .line 401
    const/4 v1, 0x1

    .line 405
    :goto_9
    return v1

    .line 403
    :cond_a
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 405
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public display()V
    .registers 7

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinkedVariables;->size()I

    move-result v0

    .line 441
    .local v0, "count":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_3e

    .line 443
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/LinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 444
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_17

    .line 442
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 447
    :cond_17
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/LinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_14

    .line 449
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_3e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public divideByAmount(F)V
    .registers 4
    .param p1, "amount"    # F

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 83
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_c

    .line 84
    iget v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 85
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 87
    :cond_c
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 4
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 293
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_e

    .line 294
    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v1, p1, :cond_b

    .line 295
    iget v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 299
    :goto_a
    return v1

    .line 297
    :cond_b
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 299
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 4

    .prologue
    .line 232
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v1, :cond_24

    .line 233
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 234
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_6
    if-eqz v0, :cond_24

    .line 235
    iget v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_21

    .line 236
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v1, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-ge v1, v2, :cond_21

    .line 237
    :cond_1d
    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 240
    :cond_21
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_6

    .line 243
    .end local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_24
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    return-object v1
.end method

.method public final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 251
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 252
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v0, 0x0

    .line 253
    .local v0, "count":I
    :goto_3
    if-eq v0, p1, :cond_a

    .line 254
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 257
    :cond_a
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public final getVariableValue(I)F
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 261
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 262
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v0, 0x0

    .line 263
    .local v0, "count":I
    :goto_3
    if-eq v0, p1, :cond_a

    .line 264
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 267
    :cond_a
    if-eqz v1, :cond_f

    iget v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public hasAtLeastOnePositiveVariable()Z
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 64
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_10

    .line 65
    iget v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    .line 66
    const/4 v1, 0x1

    .line 70
    :goto_c
    return v1

    .line 68
    :cond_d
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 70
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public invert()V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 75
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_e

    .line 76
    iget v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 77
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 79
    :cond_e
    return-void
.end method

.method public pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 98
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 99
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v2, 0x0

    .line 100
    .local v2, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 101
    .local v3, "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :goto_5
    if-eqz v1, :cond_44

    .line 102
    iget v0, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 103
    .local v0, "amount":F
    cmpg-float v4, v0, v6

    if-gez v4, :cond_2a

    .line 104
    iget v4, p0, Landroid/support/constraint/solver/LinkedVariables;->epsilon:F

    neg-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_17

    .line 105
    iput v6, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 106
    const/4 v0, 0x0

    .line 114
    :cond_17
    :goto_17
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_38

    .line 115
    iget-object v4, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v4, v5, :cond_3b

    .line 116
    cmpg-float v4, v0, v6

    if-gez v4, :cond_34

    .line 117
    iget-object v3, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 130
    .end local v0    # "amount":F
    .end local v3    # "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_29
    :goto_29
    return-object v3

    .line 109
    .restart local v0    # "amount":F
    .restart local v3    # "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_2a
    iget v4, p0, Landroid/support/constraint/solver/LinkedVariables;->epsilon:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_17

    .line 110
    iput v6, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 111
    const/4 v0, 0x0

    goto :goto_17

    .line 118
    :cond_34
    if-nez v3, :cond_38

    .line 119
    iget-object v3, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 125
    :cond_38
    :goto_38
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 126
    goto :goto_5

    .line 121
    :cond_3b
    cmpg-float v4, v0, v6

    if-gez v4, :cond_38

    if-nez v2, :cond_38

    .line 122
    iget-object v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_38

    .line 127
    .end local v0    # "amount":F
    :cond_44
    if-nez v3, :cond_29

    move-object v3, v2

    .line 130
    goto :goto_29
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 7
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    .line 303
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_9

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 337
    :goto_8
    return-void

    .line 307
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 308
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v1, 0x0

    .line 309
    .local v1, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_c
    if-eqz v0, :cond_21

    .line 310
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v2, p1, :cond_15

    .line 311
    iput p2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    goto :goto_8

    .line 314
    :cond_15
    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v2, v3, :cond_1e

    .line 315
    move-object v1, v0

    .line 317
    :cond_1e
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_c

    .line 319
    :cond_21
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    check-cast v0, Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 320
    .restart local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v0, :cond_32

    .line 321
    new-instance v0, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v0}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 323
    .restart local v0    # "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_32
    iput p2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 324
    iput-object p1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 325
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 326
    if-eqz v1, :cond_4e

    .line 327
    iget-object v2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 328
    iput-object v0, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 333
    :goto_41
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    if-nez v2, :cond_47

    .line 334
    iput-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 336
    :cond_47
    iget v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    goto :goto_8

    .line 330
    :cond_4e
    iget-object v2, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 331
    iput-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_41
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 7
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 409
    iget-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, p1, :cond_7

    .line 410
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 412
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 413
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v1, 0x0

    .line 414
    .local v1, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_a
    if-eqz v0, :cond_38

    .line 415
    iget-object v3, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, p1, :cond_34

    .line 416
    iget v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 417
    .local v2, "value":F
    iget-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    if-ne v0, v3, :cond_2f

    .line 418
    iget-object v3, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 422
    :goto_1a
    iget-object v3, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/LinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 423
    iget-object v3, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v3, v0}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 424
    iget v3, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    .line 430
    .end local v2    # "value":F
    :goto_2e
    return v2

    .line 420
    .restart local v2    # "value":F
    :cond_2f
    iget-object v3, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v3, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_1a

    .line 427
    .end local v2    # "value":F
    :cond_34
    move-object v1, v0

    .line 428
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_a

    .line 430
    :cond_38
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method public final setVariable(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 282
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 283
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v0, 0x0

    .line 284
    .local v0, "count":I
    :goto_3
    if-eq v0, p1, :cond_a

    .line 285
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 288
    :cond_a
    iput p2, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 289
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    return v0
.end method

.method public sizeInBytes()I
    .registers 2

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "size":I
    add-int/lit8 v0, v0, 0x10

    .line 436
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    const-string v1, ""

    .line 54
    .local v1, "result":Ljava/lang/String;
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 55
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_4
    if-eqz v0, :cond_26

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_4

    .line 59
    :cond_26
    return-object v1
.end method

.method public final updateArray(Landroid/support/constraint/solver/LinkedVariables;F)V
    .registers 7
    .param p1, "target"    # Landroid/support/constraint/solver/LinkedVariables;
    .param p2, "amount"    # F

    .prologue
    .line 271
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_6

    .line 279
    :cond_5
    return-void

    .line 274
    :cond_6
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 275
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_8
    if-eqz v0, :cond_5

    .line 276
    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    iget v3, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/LinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 277
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_8
.end method

.method public updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 4
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 91
    .local v0, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2
    if-eqz v0, :cond_c

    .line 92
    iget-object v1, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/SolverVariable;->addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 93
    iget-object v0, v0, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_2

    .line 95
    :cond_c
    return-void
.end method

.method public updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .registers 13
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v9, 0x0

    .line 134
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 135
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v5, 0x0

    .line 136
    .local v5, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    iget-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v7}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 137
    .local v4, "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v4, :cond_15

    .line 138
    new-instance v4, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v4    # "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v4}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 140
    .restart local v4    # "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_15
    iput-object v9, v4, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 141
    move-object v3, v4

    .line 142
    .local v3, "lastOfNewVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_18
    if-eqz v1, :cond_7a

    .line 143
    iget-object v7, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v7, v8, :cond_78

    .line 144
    iget v0, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 145
    .local v0, "amount":F
    iget-boolean v7, p2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_50

    .line 146
    iget-object v7, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v7, Landroid/support/constraint/solver/LinkedVariables;

    iget-object v2, v7, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 147
    .local v2, "definitionCurrent":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2c
    if-eqz v2, :cond_50

    .line 148
    iget-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v7}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/LinkedVariables$Link;

    .local v6, "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v6, :cond_3f

    new-instance v6, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v6    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v6}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 149
    .restart local v6    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_3f
    iget-object v7, v2, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput-object v7, v6, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 150
    iget v7, v2, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    mul-float/2addr v7, v0

    iput v7, v6, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 151
    iput-object v9, v6, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 152
    iput-object v6, v3, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 153
    move-object v3, v6

    .line 154
    iget-object v2, v2, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 155
    goto :goto_2c

    .line 157
    .end local v2    # "definitionCurrent":Landroid/support/constraint/solver/LinkedVariables$Link;
    .end local v6    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_50
    iget v7, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v8, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 158
    iget-object v7, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 159
    if-nez v5, :cond_73

    .line 160
    iget-object v7, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 164
    :goto_63
    iget-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v7, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 165
    iget v7, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    .line 169
    .end local v0    # "amount":F
    :goto_70
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_18

    .line 162
    .restart local v0    # "amount":F
    :cond_73
    iget-object v7, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v7, v5, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_63

    .line 167
    .end local v0    # "amount":F
    :cond_78
    move-object v5, v1

    goto :goto_70

    .line 171
    :cond_7a
    iget-object v1, v4, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 172
    :goto_7c
    if-eqz v1, :cond_90

    .line 173
    iget-object v7, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v8, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    invoke-virtual {p0, v7, v8}, Landroid/support/constraint/solver/LinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 174
    move-object v5, v1

    .line 175
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 176
    iget-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v7, v5}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 178
    :cond_90
    iget-object v7, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v7, v4}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .registers 15
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "rows"    # [Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v11, 0x0

    .line 182
    iget-object v1, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 183
    .local v1, "current":Landroid/support/constraint/solver/LinkedVariables$Link;
    const/4 v7, 0x0

    .line 184
    .local v7, "previous":Landroid/support/constraint/solver/LinkedVariables$Link;
    iget-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v9}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 185
    .local v6, "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v6, :cond_15

    .line 186
    new-instance v6, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v6    # "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v6}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 188
    .restart local v6    # "newVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_15
    iput-object v11, v6, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 189
    move-object v5, v6

    .line 190
    .local v5, "lastOfNewVariables":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_18
    if-eqz v1, :cond_7d

    .line 191
    iget-object v9, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v9, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 192
    .local v4, "definitionIndex":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7b

    .line 193
    iget v0, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 194
    .local v0, "amount":F
    aget-object v2, p2, v4

    .line 195
    .local v2, "definition":Landroid/support/constraint/solver/ArrayRow;
    iget-boolean v9, v2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v9, :cond_53

    .line 196
    iget-object v9, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v9, Landroid/support/constraint/solver/LinkedVariables;

    iget-object v3, v9, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 197
    .local v3, "definitionCurrent":Landroid/support/constraint/solver/LinkedVariables$Link;
    :goto_2f
    if-eqz v3, :cond_53

    .line 198
    iget-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v9}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/LinkedVariables$Link;

    .local v8, "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    if-nez v8, :cond_42

    new-instance v8, Landroid/support/constraint/solver/LinkedVariables$Link;

    .end local v8    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    invoke-direct {v8}, Landroid/support/constraint/solver/LinkedVariables$Link;-><init>()V

    .line 199
    .restart local v8    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_42
    iget-object v9, v3, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput-object v9, v8, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 200
    iget v9, v3, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    mul-float/2addr v9, v0

    iput v9, v8, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    .line 201
    iput-object v11, v8, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 202
    iput-object v8, v5, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 203
    move-object v5, v8

    .line 204
    iget-object v3, v3, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 205
    goto :goto_2f

    .line 207
    .end local v3    # "definitionCurrent":Landroid/support/constraint/solver/LinkedVariables$Link;
    .end local v8    # "temp":Landroid/support/constraint/solver/LinkedVariables$Link;
    :cond_53
    iget v9, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v10, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 208
    iget-object v9, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 209
    if-nez v7, :cond_76

    .line 210
    iget-object v9, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->head:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 214
    :goto_66
    iget-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v9, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 215
    iget v9, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/support/constraint/solver/LinkedVariables;->currentSize:I

    .line 219
    .end local v0    # "amount":F
    .end local v2    # "definition":Landroid/support/constraint/solver/ArrayRow;
    :goto_73
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 220
    goto :goto_18

    .line 212
    .restart local v0    # "amount":F
    .restart local v2    # "definition":Landroid/support/constraint/solver/ArrayRow;
    :cond_76
    iget-object v9, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    iput-object v9, v7, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    goto :goto_66

    .line 217
    .end local v0    # "amount":F
    .end local v2    # "definition":Landroid/support/constraint/solver/ArrayRow;
    :cond_7b
    move-object v7, v1

    goto :goto_73

    .line 221
    .end local v4    # "definitionIndex":I
    :cond_7d
    iget-object v1, v6, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 222
    :goto_7f
    if-eqz v1, :cond_93

    .line 223
    iget-object v9, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v10, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->value:F

    invoke-virtual {p0, v9, v10}, Landroid/support/constraint/solver/LinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 224
    move-object v7, v1

    .line 225
    iget-object v1, v1, Landroid/support/constraint/solver/LinkedVariables$Link;->next:Landroid/support/constraint/solver/LinkedVariables$Link;

    .line 226
    iget-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v9, v7}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 228
    :cond_93
    iget-object v9, p0, Landroid/support/constraint/solver/LinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v9, v6}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

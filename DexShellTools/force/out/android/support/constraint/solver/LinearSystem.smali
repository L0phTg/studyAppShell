.class public Landroid/support/constraint/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final POOL_SIZE:I = 0x3e8


# instance fields
.field private TABLE_SIZE:I

.field private mAlreadyTestedCandidates:[Z

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mGoal:Landroid/support/constraint/solver/ArrayRow;

.field private mMaxColumns:I

.field mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field private mRows:[Landroid/support/constraint/solver/ArrayRow;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mVariablesID:I

.field private tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

.field tempVars:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 44
    iput-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 51
    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 52
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 53
    iput-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 56
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 59
    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 60
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 64
    const/16 v0, 0x3e8

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 65
    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 395
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->tempVars:[Landroid/support/constraint/solver/SolverVariable;

    .line 429
    new-array v0, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    .line 68
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 69
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 70
    new-instance v0, Landroid/support/constraint/solver/Cache;

    invoke-direct {v0}, Landroid/support/constraint/solver/Cache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    .line 71
    return-void
.end method

.method private final acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .registers 6
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 253
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v1}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 254
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_13

    .line 255
    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    .end local v0    # "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/Cache;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 257
    .restart local v0    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_13
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 258
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->setType(Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 259
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, v1, v2

    .line 260
    return-object v0
.end method

.method private computeValues()V
    .registers 5

    .prologue
    .line 783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_12

    .line 784
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v2, v0

    .line 785
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    iget-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v3, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_12
    return-void
.end method

.method private createErrorVariable()Landroid/support/constraint/solver/SolverVariable;
    .registers 4

    .prologue
    .line 236
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_b

    .line 237
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 239
    :cond_b
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 240
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 241
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 242
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 243
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 244
    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 219
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_b

    .line 220
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 222
    :cond_b
    invoke-direct {p0, p2}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 223
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 224
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 225
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 226
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 227
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_2d

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 230
    :cond_2d
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 232
    return-object v0
.end method

.method private displaySolverVariables()V
    .registers 6

    .prologue
    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Rows ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") :\n\t | C | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_28
    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-gt v0, v3, :cond_59

    .line 892
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v3, v0

    .line 893
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 896
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method private enforceBFS(Landroid/support/constraint/solver/ArrayRow;)I
    .registers 26
    .param p1, "goal"    # Landroid/support/constraint/solver/ArrayRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 648
    const/16 v19, 0x0

    .line 654
    .local v19, "tries":I
    const/4 v8, 0x0

    .line 655
    .local v8, "infeasibleSystem":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_42

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v0

    .line 657
    .local v21, "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v22, v0

    sget-object v23, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2d

    .line 655
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 660
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_2a

    .line 661
    const/4 v8, 0x1

    .line 667
    .end local v21    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_42
    if-eqz v8, :cond_152

    .line 675
    const/4 v6, 0x0

    .line 676
    .local v6, "done":Z
    const/16 v19, 0x0

    .line 677
    :goto_47
    if-nez v6, :cond_152

    .line 678
    add-int/lit8 v19, v19, 0x1

    .line 682
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 683
    .local v11, "minWeak":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 684
    .local v10, "minStrong":F
    const/16 v18, -0x1

    .line 685
    .local v18, "pivotRowIndexWeak":I
    const/16 v17, -0x1

    .line 687
    .local v17, "pivotRowIndexStrong":I
    const/4 v13, -0x1

    .line 688
    .local v13, "pivotColumnIndexStrong":I
    const/4 v14, -0x1

    .line 691
    .local v14, "pivotColumnIndexWeak":I
    const/4 v7, 0x0

    :goto_58
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_e5

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v4, v22, v7

    .line 693
    .local v4, "current":Landroid/support/constraint/solver/ArrayRow;
    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v0

    .line 694
    .restart local v21    # "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v22, v0

    sget-object v23, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7f

    .line 691
    :cond_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 699
    :cond_7f
    iget v0, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_7c

    .line 701
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_8a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_7c

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v22, v0

    aget-object v3, v22, v9

    .line 703
    .local v3, "candidate":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 704
    .local v2, "a_j":F
    const/16 v22, 0x0

    cmpg-float v22, v2, v22

    if-gtz v22, :cond_b5

    .line 701
    :cond_b2
    :goto_b2
    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 707
    :cond_b5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v5

    .line 708
    .local v5, "d_j":F
    div-float v20, v5, v2

    .line 710
    .local v20, "value":F
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mStrength:Landroid/support/constraint/solver/SolverVariable$Strength;

    move-object/from16 v22, v0

    sget-object v23, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_db

    .line 711
    cmpg-float v22, v20, v10

    if-gez v22, :cond_b2

    .line 712
    move/from16 v10, v20

    .line 713
    move/from16 v17, v7

    .line 714
    move v13, v9

    goto :goto_b2

    .line 717
    :cond_db
    cmpg-float v22, v20, v11

    if-gez v22, :cond_b2

    .line 718
    move/from16 v11, v20

    .line 719
    move/from16 v18, v7

    .line 720
    move v14, v9

    goto :goto_b2

    .line 727
    .end local v2    # "a_j":F
    .end local v3    # "candidate":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "current":Landroid/support/constraint/solver/ArrayRow;
    .end local v5    # "d_j":F
    .end local v9    # "j":I
    .end local v20    # "value":F
    .end local v21    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_e5
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_144

    .line 728
    move/from16 v16, v17

    .line 729
    .local v16, "pivotRowIndex":I
    move v12, v13

    .line 735
    .local v12, "pivotColumnIndex":I
    :goto_f0
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_14f

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v15, v22, v16

    .line 738
    .local v15, "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    iget-object v0, v15, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 740
    iget-object v0, v15, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 742
    const/4 v7, 0x0

    :goto_12a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_148

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    .line 742
    add-int/lit8 v7, v7, 0x1

    goto :goto_12a

    .line 731
    .end local v12    # "pivotColumnIndex":I
    .end local v15    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    .end local v16    # "pivotRowIndex":I
    :cond_144
    move/from16 v16, v18

    .line 732
    .restart local v16    # "pivotRowIndex":I
    move v12, v14

    .restart local v12    # "pivotColumnIndex":I
    goto :goto_f0

    .line 747
    .restart local v15    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    :cond_148
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    goto/16 :goto_47

    .line 752
    .end local v15    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    :cond_14f
    const/4 v6, 0x1

    goto/16 :goto_47

    .line 763
    .end local v6    # "done":Z
    .end local v10    # "minStrong":F
    .end local v11    # "minWeak":F
    .end local v12    # "pivotColumnIndex":I
    .end local v13    # "pivotColumnIndexStrong":I
    .end local v14    # "pivotColumnIndexWeak":I
    .end local v16    # "pivotRowIndex":I
    .end local v17    # "pivotRowIndexStrong":I
    .end local v18    # "pivotRowIndexWeak":I
    :cond_152
    const/4 v8, 0x0

    .line 764
    const/4 v7, 0x0

    :goto_154
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_192

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v0

    .line 766
    .restart local v21    # "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v22, v0

    sget-object v23, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_17d

    .line 764
    :cond_17a
    add-int/lit8 v7, v7, 0x1

    goto :goto_154

    .line 769
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_17a

    .line 770
    const/4 v8, 0x1

    .line 775
    .end local v21    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_192
    if-eqz v8, :cond_194

    .line 779
    :cond_194
    return v19
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .registers 6
    .param p1, "n"    # I

    .prologue
    .line 901
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v1, v2, 0x400

    .line 902
    .local v1, "mb":I
    if-lez v1, :cond_22

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    :goto_21
    return-object v2

    .line 905
    :cond_22
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v0, v2, 0x400

    .line 906
    .local v0, "kb":I
    if-lez v0, :cond_42

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 909
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method private optimize(Landroid/support/constraint/solver/ArrayRow;)I
    .registers 23
    .param p1, "goal"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 528
    const/4 v5, 0x0

    .line 529
    .local v5, "done":Z
    const/4 v15, 0x0

    .line 530
    .local v15, "tries":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1a

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-boolean v19, v18, v6

    .line 530
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 533
    :cond_1a
    const/4 v14, 0x0

    .line 535
    .local v14, "tested":I
    :goto_1b
    if-nez v5, :cond_118

    .line 536
    add-int/lit8 v15, v15, 0x1

    .line 541
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 542
    .local v9, "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v9, :cond_3a

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object/from16 v18, v0

    iget v0, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    move/from16 v19, v0

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_6c

    .line 544
    const/4 v9, 0x0

    .line 554
    :cond_3a
    :goto_3a
    if-eqz v9, :cond_115

    .line 565
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 566
    .local v8, "minWeak":F
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 568
    .local v7, "minStrong":F
    const/4 v13, -0x1

    .line 569
    .local v13, "pivotRowIndexWeak":I
    const/4 v12, -0x1

    .line 571
    .local v12, "pivotRowIndexStrong":I
    const/4 v6, 0x0

    :goto_45
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_c2

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v18, v0

    aget-object v4, v18, v6

    .line 573
    .local v4, "current":Landroid/support/constraint/solver/ArrayRow;
    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    .line 574
    .local v17, "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_88

    .line 571
    :cond_69
    :goto_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 546
    .end local v4    # "current":Landroid/support/constraint/solver/ArrayRow;
    .end local v7    # "minStrong":F
    .end local v8    # "minWeak":F
    .end local v12    # "pivotRowIndexStrong":I
    .end local v13    # "pivotRowIndexWeak":I
    .end local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object/from16 v18, v0

    iget v0, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 547
    add-int/lit8 v14, v14, 0x1

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v14, v0, :cond_3a

    .line 549
    const/4 v5, 0x1

    goto :goto_3a

    .line 578
    .restart local v4    # "current":Landroid/support/constraint/solver/ArrayRow;
    .restart local v7    # "minStrong":F
    .restart local v8    # "minWeak":F
    .restart local v12    # "pivotRowIndexStrong":I
    .restart local v13    # "pivotRowIndexWeak":I
    .restart local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_88
    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/ArrayRow;->hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v18

    if-eqz v18, :cond_69

    .line 581
    iget v2, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 582
    .local v2, "C":F
    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v3

    .line 583
    .local v3, "a_j":F
    const/16 v18, 0x0

    cmpg-float v18, v3, v18

    if-gez v18, :cond_69

    .line 584
    const/high16 v18, -0x40800000    # -1.0f

    mul-float v18, v18, v2

    div-float v16, v18, v3

    .line 585
    .local v16, "value":F
    iget-object v0, v9, Landroid/support/constraint/solver/SolverVariable;->mStrength:Landroid/support/constraint/solver/SolverVariable$Strength;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_ba

    .line 587
    cmpg-float v18, v16, v7

    if-gez v18, :cond_69

    .line 588
    move/from16 v7, v16

    .line 589
    move v12, v6

    goto :goto_69

    .line 592
    :cond_ba
    cmpg-float v18, v16, v8

    if-gez v18, :cond_69

    .line 593
    move/from16 v8, v16

    .line 594
    move v13, v6

    goto :goto_69

    .line 600
    .end local v2    # "C":F
    .end local v3    # "a_j":F
    .end local v4    # "current":Landroid/support/constraint/solver/ArrayRow;
    .end local v16    # "value":F
    .end local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_c2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_109

    .line 601
    move v11, v12

    .line 608
    .local v11, "pivotRowIndex":I
    :goto_c9
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v11, v0, :cond_112

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v18, v0

    aget-object v10, v18, v11

    .line 614
    .local v10, "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    iget-object v0, v10, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 615
    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 616
    iget-object v0, v10, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v11, v0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 618
    const/4 v6, 0x0

    :goto_ef
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_10b

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    .line 618
    add-int/lit8 v6, v6, 0x1

    goto :goto_ef

    .line 603
    .end local v10    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    .end local v11    # "pivotRowIndex":I
    :cond_109
    move v11, v13

    .restart local v11    # "pivotRowIndex":I
    goto :goto_c9

    .line 622
    .restart local v10    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    :cond_10b
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    goto/16 :goto_1b

    .line 630
    .end local v10    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    :cond_112
    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 636
    .end local v7    # "minStrong":F
    .end local v8    # "minWeak":F
    .end local v11    # "pivotRowIndex":I
    .end local v12    # "pivotRowIndexStrong":I
    .end local v13    # "pivotRowIndexWeak":I
    :cond_115
    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 639
    .end local v9    # "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_118
    return v15
.end method

.method private releaseGoal()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 111
    :cond_d
    return-void
.end method

.method private releaseRows()V
    .registers 5

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 96
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v2, v0

    .line 97
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    if-eqz v1, :cond_13

    .line 98
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 100
    :cond_13
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_1b
    return-void
.end method

.method private updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 4
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 403
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_14

    .line 404
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V

    .line 405
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v0, v0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_14

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 427
    :cond_14
    return-void
.end method


# virtual methods
.method public addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 17
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "d"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "m2"    # I

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 952
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    .line 953
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 954
    return-void
.end method

.method public addConstraint(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 10
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v7, 0x0

    .line 436
    if-nez p1, :cond_4

    .line 520
    :cond_3
    return-void

    .line 439
    :cond_4
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    if-ge v4, v5, :cond_14

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v4, v5, :cond_17

    .line 440
    :cond_14
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 446
    :cond_17
    iget-boolean v4, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_2a

    .line 448
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    .line 451
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->ensurePositiveConstant()V

    .line 458
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->pickRowVariable()V

    .line 460
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->hasKeyVariable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    :cond_2a
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3f

    .line 474
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v5, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 476
    :cond_3f
    iget-boolean v4, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_46

    .line 477
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 479
    :cond_46
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aput-object p1, v4, v5

    .line 480
    iget-object v4, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    iput v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 481
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 483
    iget-object v4, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 484
    .local v2, "count":I
    if-lez v2, :cond_3

    .line 485
    :goto_5e
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v4, v4

    if-ge v4, v2, :cond_6d

    .line 486
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    goto :goto_5e

    .line 488
    :cond_6d
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    .line 500
    .local v1, "clients":[Landroid/support/constraint/solver/ArrayRow;
    iget-object v4, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    invoke-static {v4, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_77
    if-ge v3, v2, :cond_3

    .line 503
    aget-object v0, v1, v3

    .line 504
    .local v0, "client":Landroid/support/constraint/solver/ArrayRow;
    if-ne v0, p1, :cond_80

    .line 502
    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 508
    :cond_80
    iget-object v4, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 512
    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    goto :goto_7d
.end method

.method public addConstraint(Landroid/support/constraint/solver/LinearEquation;)V
    .registers 3
    .param p1, "e"    # Landroid/support/constraint/solver/LinearEquation;

    .prologue
    .line 150
    invoke-static {p0, p1}, Landroid/support/constraint/solver/EquationCreation;->createRowFromEquation(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/LinearEquation;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 151
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 152
    return-void
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 7
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 974
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 975
    .local v0, "idx":I
    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 976
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 977
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 978
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 986
    :cond_11
    :goto_11
    return-void

    .line 980
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_12
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v2, v0

    .line 981
    .restart local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    iget-boolean v2, v1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_11

    .line 982
    int-to-float v2, p2

    iput v2, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_11
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 5
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I

    .prologue
    .line 963
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 964
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 965
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 966
    return-void
.end method

.method addError(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 4
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 208
    .local v0, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 210
    .local v1, "error2":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 211
    return-void
.end method

.method public addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 6
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I

    .prologue
    .line 923
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 924
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 925
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 926
    return-void
.end method

.method public addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 6
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 936
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 937
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 938
    return-void
.end method

.method addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V
    .registers 4
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "sign"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 215
    .local v0, "error":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, p2}, Landroid/support/constraint/solver/ArrayRow;->addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 216
    return-void
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .registers 6
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 155
    if-nez p1, :cond_5

    .line 156
    const/4 v0, 0x0

    .line 181
    .end local p1    # "anchor":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-object v0

    .line 158
    .restart local p1    # "anchor":Ljava/lang/Object;
    :cond_5
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_10

    .line 159
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 161
    :cond_10
    const/4 v0, 0x0

    .line 162
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    instance-of v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 163
    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 164
    if-nez v0, :cond_2c

    move-object v1, p1

    .line 165
    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 166
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 168
    :cond_2c
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-eq v1, v3, :cond_40

    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    if-gt v1, v2, :cond_40

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-object v1, v1, v2

    if-nez v1, :cond_4

    .line 171
    :cond_40
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-eq v1, v3, :cond_47

    .line 172
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 174
    :cond_47
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 175
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 176
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 177
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v1, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 178
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    goto :goto_4
.end method

.method public createRow()Landroid/support/constraint/solver/ArrayRow;
    .registers 3

    .prologue
    .line 185
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v1}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/ArrayRow;

    .line 186
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    if-nez v0, :cond_14

    .line 187
    new-instance v0, Landroid/support/constraint/solver/ArrayRow;

    .end local v0    # "row":Landroid/support/constraint/solver/ArrayRow;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    .line 191
    .restart local v0    # "row":Landroid/support/constraint/solver/ArrayRow;
    :goto_13
    return-object v0

    .line 189
    :cond_14
    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayRow;->reset()V

    goto :goto_13
.end method

.method public createSlackVariable()Landroid/support/constraint/solver/SolverVariable;
    .registers 4

    .prologue
    .line 195
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_b

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 198
    :cond_b
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 199
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 200
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 201
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 202
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 203
    return-object v0
.end method

.method public displayReadableRows()V
    .registers 5

    .prologue
    .line 820
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 821
    const-string v1, ""

    .line 822
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_39

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 826
    :cond_39
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    if-eqz v2, :cond_5a

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    :cond_5a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public displayRows()V
    .registers 5

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 808
    const-string v1, ""

    .line 809
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_35

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 813
    :cond_35
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    if-eqz v2, :cond_52

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    :cond_52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public displaySystemInformations()V
    .registers 9

    .prologue
    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, "count":I
    const/4 v3, 0x0

    .line 866
    .local v3, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v2, v4, :cond_19

    .line 867
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    if-eqz v4, :cond_16

    .line 868
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    .line 866
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 871
    :cond_19
    const/4 v0, 0x0

    .line 872
    .local v0, "actualRowSize":I
    const/4 v2, 0x0

    :goto_1b
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v2, v4, :cond_31

    .line 873
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2e

    .line 874
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v0, v4

    .line 872
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 878
    :cond_31
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Linear System -> Table size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iget v7, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v6, v7

    .line 879
    invoke-direct {p0, v6}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") -- row sizes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 880
    invoke-direct {p0, v3}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 881
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cols: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " occupied cells, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 884
    invoke-direct {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/support/constraint/solver/LinkedVariables;->sCreation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " created Link variables"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method public displayVariablesReadableRows()V
    .registers 5

    .prologue
    .line 833
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 834
    const-string v1, ""

    .line 835
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_45

    .line 836
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_42

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 841
    :cond_45
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    if-eqz v2, :cond_66

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    :cond_66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public getCache()Landroid/support/constraint/solver/Cache;
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    return-object v0
.end method

.method public getGoal()Landroid/support/constraint/solver/ArrayRow;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    return-object v0
.end method

.method public getMemoryUsed()I
    .registers 4

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_18

    .line 850
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    if-eqz v2, :cond_15

    .line 851
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    .line 849
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 854
    :cond_18
    return v0
.end method

.method public getNumEquations()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .registers 2

    .prologue
    .line 858
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .registers 5
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    .line 286
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 287
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v0, :cond_f

    .line 288
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 290
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getRow(I)Landroid/support/constraint/solver/ArrayRow;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValueFor(Ljava/lang/String;)F
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 279
    .local v0, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_a

    .line 280
    const/4 v1, 0x0

    .line 282
    :goto_9
    return v1

    :cond_a
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    goto :goto_9
.end method

.method public getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 301
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 304
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 305
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_19

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 308
    :cond_19
    return-object v0
.end method

.method increaseTableSize()V
    .registers 4

    .prologue
    .line 81
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 82
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 83
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 84
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 85
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 86
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 87
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseGoal()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    .line 89
    return-void
.end method

.method public minimize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->rebuildGoalFromErrors()V

    .line 343
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->minimizeGoal(Landroid/support/constraint/solver/ArrayRow;)V

    .line 344
    return-void
.end method

.method public minimizeGoal(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 7
    .param p1, "goal"    # Landroid/support/constraint/solver/ArrayRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v3, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V

    .line 360
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->hasAtLeastOnePositiveVariable()Z

    move-result v2

    .line 362
    .local v2, "validGoal":Z
    if-nez v2, :cond_11

    .line 363
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V

    .line 393
    :goto_10
    return-void

    .line 375
    :cond_11
    :try_start_11
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/ArrayRow;)I

    move-result v1

    .line 383
    .local v1, "tries":I
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->optimize(Landroid/support/constraint/solver/ArrayRow;)I

    move-result v1

    .line 388
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 389
    .end local v1    # "tries":I
    :catch_1d
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V

    .line 391
    throw v0
.end method

.method public rebuildGoalFromErrors()V
    .registers 5

    .prologue
    .line 319
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    if-eqz v2, :cond_26

    .line 320
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->reset()V

    .line 324
    :goto_9
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v0, v2, :cond_2d

    .line 325
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v2, v0

    .line 326
    .local v1, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_23

    .line 328
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 324
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 322
    .end local v0    # "i":I
    .end local v1    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_26
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    goto :goto_9

    .line 336
    .restart local v0    # "i":I
    :cond_2d
    return-void
.end method

.method replaceVariable(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/SolverVariable;)V
    .registers 5
    .param p1, "target"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 796
    iget v0, p2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 797
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 798
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    .line 800
    :cond_c
    return-void
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 118
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v2, v0

    .line 119
    .local v1, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v1, :cond_15

    .line 120
    invoke-virtual {v1}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 117
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 123
    .end local v1    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_18
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v2, v3, v4}, Landroid/support/constraint/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 124
    iput v5, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 126
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v2, :cond_35

    .line 128
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 130
    :cond_35
    iput v5, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 131
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseGoal()V

    .line 132
    iput-object v6, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/ArrayRow;

    .line 133
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 134
    const/4 v0, 0x0

    :goto_40
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_4d

    .line 135
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v0

    iput-boolean v5, v2, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 137
    :cond_4d
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 138
    iput v5, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 139
    return-void
.end method

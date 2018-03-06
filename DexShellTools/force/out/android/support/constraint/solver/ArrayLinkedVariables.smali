.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private epsilon:F

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .registers 6
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 51
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->epsilon:F

    .line 54
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 57
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 60
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 63
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 79
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 82
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 102
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 103
    iput-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 109
    return-void
.end method


# virtual methods
.method public final add(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 14
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 214
    cmpl-float v6, p2, v8

    if-nez v6, :cond_8

    .line 313
    :cond_7
    :goto_7
    return-void

    .line 218
    :cond_8
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v6, v9, :cond_33

    .line 219
    iput v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 220
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v6, v7

    .line 221
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v8, v6, v7

    .line 222
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v9, v6, v7

    .line 223
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 224
    iget-boolean v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v6, :cond_7

    .line 226
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_7

    .line 230
    :cond_33
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 231
    .local v2, "current":I
    const/4 v5, -0x1

    .line 232
    .local v5, "previous":I
    const/4 v1, 0x0

    .line 233
    .local v1, "counter":I
    :goto_37
    if-eq v2, v9, :cond_8f

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v6, :cond_8f

    .line 234
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v6, v2

    .line 235
    .local v4, "idx":I
    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v6, :cond_7f

    .line 236
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v6, v2

    add-float/2addr v7, p2

    aput v7, v6, v2

    .line 238
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_7

    .line 239
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v2, v6, :cond_76

    .line 240
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v2

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 244
    :goto_5e
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v6, v6, v4

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 245
    iget-boolean v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_6f

    .line 247
    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 249
    :cond_6f
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    goto :goto_7

    .line 242
    :cond_76
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v7, v2

    aput v7, v6, v5

    goto :goto_5e

    .line 253
    :cond_7f
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v2

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_88

    .line 254
    move v5, v2

    .line 256
    :cond_88
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v6, v2

    add-int/lit8 v1, v1, 0x1

    .line 257
    goto :goto_37

    .line 262
    .end local v4    # "idx":I
    :cond_8f
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, v6, 0x1

    .line 263
    .local v0, "availableIndice":I
    iget-boolean v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_a1

    .line 266
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v6, v6, v7

    if-ne v6, v9, :cond_127

    .line 267
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 272
    :cond_a1
    :goto_a1
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_ba

    .line 273
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-ge v6, v7, :cond_ba

    .line 275
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ae
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v3, v6, :cond_ba

    .line 276
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v3

    if-ne v6, v9, :cond_12c

    .line 277
    move v0, v3

    .line 284
    .end local v3    # "i":I
    :cond_ba
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_ec

    .line 285
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v6

    .line 286
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 287
    iput-boolean v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 288
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 289
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 290
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 291
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 295
    :cond_ec
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v7, v6, v0

    .line 296
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v6, v0

    .line 297
    if-eq v5, v9, :cond_12f

    .line 298
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v7, v5

    aput v7, v6, v0

    .line 299
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, v6, v5

    .line 304
    :goto_104
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 305
    iget-boolean v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v6, :cond_114

    .line 307
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 309
    :cond_114
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_7

    .line 310
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 311
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto/16 :goto_7

    .line 269
    :cond_127
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v6

    goto/16 :goto_a1

    .line 275
    .restart local v3    # "i":I
    :cond_12c
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 301
    .end local v3    # "i":I
    :cond_12f
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v7, v6, v0

    .line 302
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_104
.end method

.method public final clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 359
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 360
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 361
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 362
    return-void
.end method

.method public final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 8
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 371
    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v3, v5, :cond_7

    .line 382
    :cond_6
    :goto_6
    return v2

    .line 374
    :cond_7
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 375
    .local v1, "current":I
    const/4 v0, 0x0

    .line 376
    .local v0, "counter":I
    :goto_a
    if-eq v1, v5, :cond_6

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v3, :cond_6

    .line 377
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1a

    .line 378
    const/4 v2, 0x1

    goto :goto_6

    .line 380
    :cond_1a
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public display()V
    .registers 7

    .prologue
    .line 691
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 692
    .local v0, "count":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_3c

    .line 694
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 695
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_15

    .line 693
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 698
    :cond_15
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_12

    .line 700
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_3c
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public divideByAmount(F)V
    .registers 6
    .param p1, "amount"    # F

    .prologue
    .line 421
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 422
    .local v1, "current":I
    const/4 v0, 0x0

    .line 423
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_18

    .line 424
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    .line 425
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 427
    :cond_18
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 6
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 671
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 672
    .local v1, "current":I
    const/4 v0, 0x0

    .line 673
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1e

    .line 674
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 675
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 679
    :goto_16
    return v2

    .line 677
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 679
    :cond_1e
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 5

    .prologue
    .line 576
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v2, :cond_29

    .line 578
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 579
    .local v1, "current":I
    const/4 v0, 0x0

    .line 580
    .local v0, "counter":I
    :goto_7
    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_29

    .line 581
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_22

    .line 584
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 589
    .end local v0    # "counter":I
    .end local v1    # "current":I
    :goto_21
    return-object v2

    .line 586
    .restart local v0    # "counter":I
    .restart local v1    # "current":I
    :cond_22
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 589
    .end local v0    # "counter":I
    .end local v1    # "current":I
    :cond_29
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_21
.end method

.method public final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 599
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 600
    .local v1, "current":I
    const/4 v0, 0x0

    .line 601
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1e

    .line 602
    if-ne v0, p1, :cond_17

    .line 603
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 607
    :goto_16
    return-object v2

    .line 605
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 607
    :cond_1e
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public final getVariableValue(I)F
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 617
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 618
    .local v1, "current":I
    const/4 v0, 0x0

    .line 619
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_18

    .line 620
    if-ne v0, p1, :cond_11

    .line 621
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 625
    :goto_10
    return v2

    .line 623
    :cond_11
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 625
    :cond_18
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public hasAtLeastOnePositiveVariable()Z
    .registers 5

    .prologue
    .line 391
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 392
    .local v1, "current":I
    const/4 v0, 0x0

    .line 393
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1c

    .line 394
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 395
    const/4 v2, 0x1

    .line 399
    :goto_14
    return v2

    .line 397
    :cond_15
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 399
    :cond_1c
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public invert()V
    .registers 6

    .prologue
    .line 406
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 407
    .local v1, "current":I
    const/4 v0, 0x0

    .line 408
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1a

    .line 409
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 410
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 412
    :cond_1a
    return-void
.end method

.method public pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 450
    const/4 v3, 0x0

    .line 451
    .local v3, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v4, 0x0

    .line 452
    .local v4, "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 453
    .local v2, "current":I
    const/4 v1, 0x0

    .line 454
    .local v1, "counter":I
    :goto_6
    const/4 v6, -0x1

    if-eq v2, v6, :cond_58

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v6, :cond_58

    .line 455
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v6, v2

    .line 456
    .local v0, "amount":F
    cmpg-float v6, v0, v8

    if-gez v6, :cond_3a

    .line 457
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->epsilon:F

    neg-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_21

    .line 458
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v8, v6, v2

    .line 459
    const/4 v0, 0x0

    .line 467
    :cond_21
    :goto_21
    cmpl-float v6, v0, v8

    if-eqz v6, :cond_49

    .line 468
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v2

    aget-object v5, v6, v7

    .line 469
    .local v5, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v6, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_50

    .line 470
    cmpg-float v6, v0, v8

    if-gez v6, :cond_46

    .line 484
    .end local v0    # "amount":F
    .end local v5    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :goto_39
    return-object v5

    .line 462
    .restart local v0    # "amount":F
    :cond_3a
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->epsilon:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_21

    .line 463
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v8, v6, v2

    .line 464
    const/4 v0, 0x0

    goto :goto_21

    .line 472
    .restart local v5    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_46
    if-nez v4, :cond_49

    .line 473
    move-object v4, v5

    .line 479
    .end local v5    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_49
    :goto_49
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v6, v2

    add-int/lit8 v1, v1, 0x1

    .line 480
    goto :goto_6

    .line 475
    .restart local v5    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_50
    cmpg-float v6, v0, v8

    if-gez v6, :cond_49

    if-nez v3, :cond_49

    .line 476
    move-object v3, v5

    goto :goto_49

    .line 481
    .end local v0    # "amount":F
    .end local v5    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_58
    if-eqz v4, :cond_5c

    move-object v5, v4

    .line 482
    goto :goto_39

    :cond_5c
    move-object v5, v3

    .line 484
    goto :goto_39
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 12
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 118
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_b

    .line 119
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 202
    :cond_a
    :goto_a
    return-void

    .line 123
    :cond_b
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v5, v8, :cond_36

    .line 124
    iput v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 125
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v5, v6

    .line 126
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v7, v5, v6

    .line 127
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v8, v5, v6

    .line 128
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 129
    iget-boolean v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v5, :cond_a

    .line 131
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_a

    .line 135
    :cond_36
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 136
    .local v2, "current":I
    const/4 v4, -0x1

    .line 137
    .local v4, "previous":I
    const/4 v1, 0x0

    .line 138
    .local v1, "counter":I
    :goto_3a
    if-eq v2, v8, :cond_5d

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v5, :cond_5d

    .line 139
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_4d

    .line 140
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v5, v2

    goto :goto_a

    .line 143
    :cond_4d
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v5, v6, :cond_56

    .line 144
    move v4, v2

    .line 146
    :cond_56
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 152
    :cond_5d
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, v5, 0x1

    .line 153
    .local v0, "availableIndice":I
    iget-boolean v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v5, :cond_6f

    .line 156
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v5, v5, v6

    if-ne v5, v8, :cond_ee

    .line 157
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 162
    :cond_6f
    :goto_6f
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_88

    .line 163
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v5, v6, :cond_88

    .line 165
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7c
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-ge v3, v5, :cond_88

    .line 166
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v3

    if-ne v5, v8, :cond_f3

    .line 167
    move v0, v3

    .line 174
    .end local v3    # "i":I
    :cond_88
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_ba

    .line 175
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v5

    .line 176
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 177
    iput-boolean v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 178
    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 179
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 180
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 181
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 185
    :cond_ba
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v6, v5, v0

    .line 186
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v5, v0

    .line 187
    if-eq v4, v8, :cond_f6

    .line 188
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v4

    aput v6, v5, v0

    .line 189
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, v5, v4

    .line 194
    :goto_d2
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 195
    iget-boolean v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v5, :cond_e2

    .line 197
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 199
    :cond_e2
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 200
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    goto/16 :goto_a

    .line 159
    :cond_ee
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v5

    goto/16 :goto_6f

    .line 165
    .restart local v3    # "i":I
    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 191
    .end local v3    # "i":I
    :cond_f6
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v6, v5, v0

    .line 192
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_d2
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 9
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 322
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v5, p1, :cond_9

    .line 323
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 325
    :cond_9
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v5, v6, :cond_e

    .line 351
    :cond_d
    :goto_d
    return v4

    .line 328
    :cond_e
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 329
    .local v1, "current":I
    const/4 v3, -0x1

    .line 330
    .local v3, "previous":I
    const/4 v0, 0x0

    .line 331
    .local v0, "counter":I
    :goto_12
    if-eq v1, v6, :cond_d

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v5, :cond_d

    .line 332
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v5, v1

    .line 333
    .local v2, "idx":I
    iget v5, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v5, :cond_53

    .line 334
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, v4, :cond_4a

    .line 335
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v1

    iput v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 339
    :goto_2a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 340
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 341
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v6, v4, v1

    .line 342
    iget-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_45

    .line 344
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 346
    :cond_45
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    goto :goto_d

    .line 337
    :cond_4a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v5, v1

    aput v5, v4, v3

    goto :goto_2a

    .line 348
    :cond_53
    move v3, v1

    .line 349
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 350
    goto :goto_12
.end method

.method public final setVariable(IF)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 655
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 656
    .local v1, "current":I
    const/4 v0, 0x0

    .line 657
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_17

    .line 658
    if-ne v0, p1, :cond_10

    .line 659
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v1

    .line 661
    :cond_10
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 663
    :cond_17
    return-void
.end method

.method public sizeInBytes()I
    .registers 3

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 686
    add-int/lit8 v0, v0, 0x24

    .line 687
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 710
    const-string v2, ""

    .line 711
    .local v2, "result":Ljava/lang/String;
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 712
    .local v1, "current":I
    const/4 v0, 0x0

    .line 713
    .local v0, "counter":I
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v3, :cond_5c

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 719
    :cond_5c
    return-object v2
.end method

.method public final updateArray(Landroid/support/constraint/solver/ArrayLinkedVariables;F)V
    .registers 9
    .param p1, "target"    # Landroid/support/constraint/solver/ArrayLinkedVariables;
    .param p2, "amount"    # F

    .prologue
    .line 635
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_6

    .line 646
    :cond_5
    return-void

    .line 638
    :cond_6
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 639
    .local v1, "current":I
    const/4 v0, 0x0

    .line 640
    .local v0, "counter":I
    :goto_9
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v4, :cond_5

    .line 641
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v3, v4, v5

    .line 642
    .local v3, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v4, v1

    .line 643
    .local v2, "value":F
    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v4

    mul-float v5, v2, p2

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 644
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v4, v1

    add-int/lit8 v0, v0, 0x1

    .line 645
    goto :goto_9
.end method

.method public updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 6
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 436
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 437
    .local v1, "current":I
    const/4 v0, 0x0

    .line 438
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1e

    .line 439
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/SolverVariable;->addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 440
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 442
    :cond_1e
    return-void
.end method

.method public updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .registers 14
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v10, -0x1

    .line 497
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 498
    .local v1, "current":I
    const/4 v0, 0x0

    .line 499
    .local v0, "counter":I
    :goto_4
    if-eq v1, v10, :cond_5c

    iget v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v8, :cond_5c

    .line 500
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v1

    iget-object v9, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_55

    .line 501
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v8, v1

    .line 502
    .local v7, "value":F
    iget-object v8, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 504
    iget-object v6, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v6, Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 505
    .local v6, "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    iget v3, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 506
    .local v3, "definitionCurrent":I
    const/4 v2, 0x0

    .line 507
    .local v2, "definitionCounter":I
    :goto_24
    if-eq v3, v10, :cond_44

    iget v8, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v8, :cond_44

    .line 508
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v3

    aget-object v5, v8, v9

    .line 510
    .local v5, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v8, v3

    .line 511
    .local v4, "definitionValue":F
    mul-float v8, v4, v7

    invoke-virtual {p0, v5, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 512
    iget-object v8, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v8, v3

    add-int/lit8 v2, v2, 0x1

    .line 513
    goto :goto_24

    .line 514
    .end local v4    # "definitionValue":F
    .end local v5    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    :cond_44
    iget v8, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v9, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 515
    iget-object v8, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v8, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 520
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 521
    const/4 v0, 0x0

    .line 522
    goto :goto_4

    .line 524
    .end local v2    # "definitionCounter":I
    .end local v3    # "definitionCurrent":I
    .end local v6    # "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    .end local v7    # "value":F
    :cond_55
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 526
    :cond_5c
    return-void
.end method

.method public updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .registers 16
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "rows"    # [Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v12, -0x1

    .line 538
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 539
    .local v1, "current":I
    const/4 v0, 0x0

    .line 540
    .local v0, "counter":I
    :goto_4
    if-eq v1, v12, :cond_62

    iget v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v10, :cond_62

    .line 541
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v10, v10, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v1

    aget-object v9, v10, v11

    .line 542
    .local v9, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v10, v9, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-eq v10, v12, :cond_5b

    .line 543
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v10, v1

    .line 544
    .local v8, "value":F
    invoke-virtual {p0, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 546
    iget v10, v9, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v2, p2, v10

    .line 547
    .local v2, "definition":Landroid/support/constraint/solver/ArrayRow;
    iget-object v7, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v7, Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 548
    .local v7, "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    iget v4, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 549
    .local v4, "definitionCurrent":I
    const/4 v3, 0x0

    .line 550
    .local v3, "definitionCounter":I
    :goto_2a
    if-eq v4, v12, :cond_4a

    iget v10, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v10, :cond_4a

    .line 551
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v10, v10, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v4

    aget-object v6, v10, v11

    .line 553
    .local v6, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v10, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v10, v4

    .line 554
    .local v5, "definitionValue":F
    mul-float v10, v5, v8

    invoke-virtual {p0, v6, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 555
    iget-object v10, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v10, v4

    add-int/lit8 v3, v3, 0x1

    .line 556
    goto :goto_2a

    .line 557
    .end local v5    # "definitionValue":F
    .end local v6    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    :cond_4a
    iget v10, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v11, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 558
    iget-object v10, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 563
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 564
    const/4 v0, 0x0

    .line 565
    goto :goto_4

    .line 567
    .end local v2    # "definition":Landroid/support/constraint/solver/ArrayRow;
    .end local v3    # "definitionCounter":I
    .end local v4    # "definitionCurrent":I
    .end local v7    # "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    .end local v8    # "value":F
    :cond_5b
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v10, v1

    add-int/lit8 v0, v0, 0x1

    .line 568
    goto :goto_4

    .line 569
    .end local v9    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_62
    return-void
.end method

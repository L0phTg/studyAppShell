.class public Landroid/support/constraint/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"


# static fields
.field private static final DEBUG:Z = false

.field static final USE_LINKED_VARIABLES:Z = true


# instance fields
.field constantValue:F

.field final epsilon:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroid/support/constraint/solver/SolverVariable;

.field variableValue:F

.field final variables:Landroid/support/constraint/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .registers 5
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 24
    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->variableValue:F

    .line 25
    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 26
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 27
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->epsilon:F

    .line 33
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 36
    new-instance v0, Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 39
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .registers 5
    .param p1, "error1"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "error2"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 303
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 304
    return-object p0
.end method

.method public addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 5
    .param p1, "error"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "sign"    # I

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 183
    return-object p0
.end method

.method public createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .registers 13
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 266
    if-ne p2, p5, :cond_18

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 271
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p6, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 272
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 298
    :cond_17
    :goto_17
    return-object p0

    .line 275
    :cond_18
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_3c

    .line 282
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 283
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 284
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p5, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 285
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p6, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 286
    if-gtz p3, :cond_36

    if-lez p7, :cond_17

    .line 287
    :cond_36
    neg-int v0, p3

    add-int/2addr v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_17

    .line 290
    :cond_3c
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    sub-float v1, v2, p4

    mul-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 291
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    sub-float v1, v2, p4

    mul-float/2addr v1, v3

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 292
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float v1, v3, p4

    invoke-virtual {v0, p5, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 293
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float v1, v2, p4

    invoke-virtual {v0, p6, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 294
    if-gtz p3, :cond_5e

    if-lez p7, :cond_17

    .line 295
    :cond_5e
    neg-int v0, p3

    int-to-float v0, v0

    sub-float v1, v2, p4

    mul-float/2addr v0, v1

    int-to-float v1, p7

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_17
.end method

.method public createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 144
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 145
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 147
    return-object p0
.end method

.method public createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .registers 7
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "percent"    # F

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 310
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 311
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p3, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 312
    return-object p0
.end method

.method public createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .registers 8
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "ratio"    # F

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 330
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 331
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p3, p5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 332
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float v1, p5

    invoke-virtual {v0, p4, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 333
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 18
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "marginStartA"    # I
    .param p6, "variableEndA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginEndA"    # I
    .param p8, "variableStartB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p9, "marginStartB"    # I
    .param p10, "variableEndB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p11, "marginEndB"    # I

    .prologue
    .line 238
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_9

    cmpl-float v4, p1, p3

    if-nez v4, :cond_30

    .line 242
    :cond_9
    neg-int v4, p5

    sub-int/2addr v4, p7

    add-int/2addr v4, p9

    add-int v4, v4, p11

    int-to-float v4, v4

    iput v4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 243
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 244
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 245
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 246
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p8, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 260
    :goto_2f
    return-object p0

    .line 248
    :cond_30
    div-float v1, p1, p2

    .line 249
    .local v1, "cw":F
    div-float v2, p3, p2

    .line 250
    .local v2, "nw":F
    div-float v3, v1, v2

    .line 254
    .local v3, "w":F
    neg-int v4, p5

    sub-int/2addr v4, p7

    int-to-float v4, v4

    int-to-float v5, p9

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move/from16 v0, p11

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 255
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 256
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 257
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 258
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float v5, v3

    invoke-virtual {v4, p8, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_2f
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 151
    if-gez p2, :cond_f

    .line 152
    mul-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 153
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 158
    :goto_e
    return-object p0

    .line 155
    :cond_f
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 156
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_e
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 9
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "inverse":Z
    if-eqz p3, :cond_10

    .line 164
    move v1, p3

    .line 165
    .local v1, "m":I
    if-gez v1, :cond_d

    .line 166
    mul-int/lit8 v1, v1, -0x1

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_d
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 171
    .end local v1    # "m":I
    :cond_10
    if-nez v0, :cond_1d

    .line 172
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 173
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 178
    :goto_1c
    return-object p0

    .line 175
    :cond_1d
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 176
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_1c
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 10
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "slack"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "inverse":Z
    if-eqz p4, :cond_10

    .line 191
    move v1, p4

    .line 192
    .local v1, "m":I
    if-gez v1, :cond_d

    .line 193
    mul-int/lit8 v1, v1, -0x1

    .line 194
    const/4 v0, 0x1

    .line 196
    :cond_d
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 198
    .end local v1    # "m":I
    :cond_10
    if-nez v0, :cond_22

    .line 199
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 200
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 201
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 207
    :goto_21
    return-object p0

    .line 203
    :cond_22
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 204
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 205
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_21
.end method

.method public createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 10
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "slack"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "inverse":Z
    if-eqz p4, :cond_10

    .line 214
    move v1, p4

    .line 215
    .local v1, "m":I
    if-gez v1, :cond_d

    .line 216
    mul-int/lit8 v1, v1, -0x1

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_d
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 221
    .end local v1    # "m":I
    :cond_10
    if-nez v0, :cond_22

    .line 222
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 223
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 224
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 230
    :goto_21
    return-object p0

    .line 226
    :cond_22
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 227
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 228
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_21
.end method

.method public ensurePositiveConstant()V
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 376
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 378
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->invert()V

    .line 387
    :cond_13
    return-void
.end method

.method public hasAtLeastOnePositiveVariable()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->hasAtLeastOnePositiveVariable()Z

    move-result v0

    return v0
.end method

.method public hasKeyVariable()Z
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 3
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->containsKey(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v0

    return v0
.end method

.method public pickRowVariable()V
    .registers 3

    .prologue
    .line 391
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 392
    .local v0, "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v0, :cond_b

    .line 393
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 395
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v1, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v1, :cond_14

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 398
    :cond_14
    return-void
.end method

.method public pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 7
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 481
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_12

    .line 483
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 484
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 488
    :cond_12
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v1

    mul-float v0, v1, v3

    .line 489
    .local v0, "amount":F
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 490
    iput v4, p0, Landroid/support/constraint/solver/ArrayRow;->variableValue:F

    .line 491
    cmpl-float v1, v0, v4

    if-nez v1, :cond_23

    .line 496
    :goto_22
    return-void

    .line 494
    :cond_23
    iget v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 495
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->divideByAmount(F)V

    goto :goto_22
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 133
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 134
    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->variableValue:F

    .line 135
    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 137
    return-void
.end method

.method public sizeInBytes()I
    .registers 3

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_7

    .line 339
    add-int/lit8 v0, v0, 0x4

    .line 341
    :cond_7
    add-int/lit8 v0, v0, 0x4

    .line 342
    add-int/lit8 v0, v0, 0x4

    .line 343
    add-int/lit8 v0, v0, 0x4

    .line 345
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    return v0
.end method

.method public toReadableString()Ljava/lang/String;
    .registers 12

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    .line 82
    const-string v5, ""

    .line 83
    .local v5, "s":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v7, :cond_5c

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    :goto_1c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "addedVariable":Z
    iget v7, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_4a

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    const/4 v0, 0x1

    .line 94
    :cond_4a
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v2, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 95
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    if-ge v3, v2, :cond_f6

    .line 96
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 97
    .local v6, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v6, :cond_70

    .line 95
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 86
    .end local v0    # "addedVariable":Z
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 100
    .restart local v0    # "addedVariable":Z
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_70
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v1

    .line 101
    .local v1, "amount":F
    invoke-virtual {v6}, Landroid/support/constraint/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_ad

    .line 103
    cmpg-float v7, v1, v9

    if-gez v7, :cond_94

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    mul-float/2addr v1, v10

    .line 115
    :cond_94
    :goto_94
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_da

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    :goto_ab
    const/4 v0, 0x1

    goto :goto_59

    .line 108
    :cond_ad
    cmpl-float v7, v1, v9

    if-lez v7, :cond_c5

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_94

    .line 111
    :cond_c5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    mul-float/2addr v1, v10

    goto :goto_94

    .line 118
    :cond_da
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_ab

    .line 122
    .end local v1    # "amount":F
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_f6
    if-nez v0, :cond_10b

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0.0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    :cond_10b
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateClientEquations()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V

    .line 44
    return-void
.end method

.method public updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z
    .registers 3
    .param p1, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 352
    const/4 v0, 0x1

    return v0
.end method

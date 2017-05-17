.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;
.super Ljava/lang/Object;
.source "HighlightStyleFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;
    }
.end annotation


# static fields
.field private static final CJK_COLOR_BASE_RATIO:F = 0.6f

.field private static final DEFAULT_HIGHLIGHT_COLOR:I = -0xff6033

.field private static final TAG:Ljava/lang/String; = "HighlightStyleFactory"

.field private static sFactory:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;


# instance fields
.field private mBackgroundColor:I

.field private mColorSpanPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/style/BackgroundColorSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mFgColor:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, -0xff6033

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    .line 58
    return-void
.end method

.method private getColorSpan(I)Landroid/text/style/CharacterStyle;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "result":Landroid/text/style/BackgroundColorSpan;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/text/style/BackgroundColorSpan;
    check-cast v0, Landroid/text/style/BackgroundColorSpan;

    .line 312
    .local v0, "result":Landroid/text/style/BackgroundColorSpan;
    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->sFactory:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->sFactory:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    .line 69
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->sFactory:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    return-object v0
.end method

.method private indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    const/4 v6, -0x1

    .line 241
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 242
    :cond_0
    return v6

    .line 245
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 246
    .local v3, "textLength":I
    array-length v2, p2

    .line 248
    .local v2, "prefixLength":I
    if-eqz v2, :cond_2

    if-ge v3, v2, :cond_3

    .line 249
    :cond_2
    return v6

    .line 252
    :cond_3
    const/4 v0, 0x0

    .line 253
    .local v0, "i":I
    :cond_4
    if-ge v0, v3, :cond_b

    .line 255
    :goto_0
    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    :cond_5
    add-int v4, v0, v2

    if-le v4, v3, :cond_7

    .line 260
    return v6

    .line 256
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_7
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 266
    add-int v4, v0, v1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aget-char v5, p2, v1

    if-eq v4, v5, :cond_9

    .line 270
    :cond_8
    if-ne v1, v2, :cond_a

    .line 271
    return v0

    .line 265
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_a
    :goto_2
    if-ge v0, v3, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    .end local v1    # "j":I
    :cond_b
    return v6
.end method


# virtual methods
.method public constructHighlightStyle(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v1

    .line 223
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 224
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    .local v0, "result":Landroid/text/SpannableString;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getColorSpan(I)Landroid/text/style/CharacterStyle;

    move-result-object v2

    array-length v3, p2

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 226
    return-object v0

    .line 228
    .end local v0    # "result":Landroid/text/SpannableString;
    :cond_0
    return-object p1
.end method

.method public constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "digits"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    return-object v4

    .line 206
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "start":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 211
    return-object v4

    .line 213
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 215
    .local v0, "end":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 216
    .local v2, "style":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getColorSpan(I)Landroid/text/style/CharacterStyle;

    move-result-object v3

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    return-object v2
.end method

.method public constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/CharSequence;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "digits"    # Ljava/lang/String;
    .param p3, "patternData"    # [I

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-nez p2, :cond_1

    .line 146
    :cond_0
    const/4 v13, 0x0

    return-object v13

    .line 144
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 145
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v13, v0

    if-eqz v13, :cond_0

    .line 149
    const-string/jumbo v13, "HighlightStyleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HighlightStyle: name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; digits="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .local v10, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 153
    .local v5, "len":I
    const/4 v3, 0x0

    .line 154
    .local v3, "index":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 155
    .local v12, "unmatched":I
    const/4 v7, 0x0

    .line 158
    .local v7, "spanIndex":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget v11, p3, v3

    .line 159
    .local v11, "type":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget v9, p3, v4

    .line 160
    .local v9, "start":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget v6, p3, v3

    .line 161
    .local v6, "size":I
    move v1, v9

    .line 163
    .local v1, "end":I
    const-string/jumbo v13, "HighlightStyleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    sub-int/2addr v12, v6

    .line 175
    :goto_1
    if-ge v9, v5, :cond_2

    if-le v1, v5, :cond_6

    .line 176
    :cond_2
    const-string/jumbo v13, "HighlightStyleFactory"

    const-string/jumbo v14, "(start >= len || end > len) should not happen."

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v13, "HighlightStyleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", digits="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v13, "HighlightStyleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", end="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v2, v13, :cond_5

    .line 181
    const-string/jumbo v13, "HighlightStyleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, p3, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v2, 0x1

    aget v15, p3, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 182
    add-int/lit8 v15, v2, 0x2

    aget v15, p3, v15

    .line 181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 167
    .end local v2    # "i":I
    :cond_3
    if-gt v6, v12, :cond_4

    .line 168
    add-int/2addr v1, v6

    .line 169
    sub-int/2addr v12, v6

    goto/16 :goto_1

    .line 171
    :cond_4
    add-int/2addr v1, v12

    .line 172
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 185
    .restart local v2    # "i":I
    :cond_5
    return-object v10

    .line 188
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "spanIndex":I
    .local v8, "spanIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getColorSpan(I)Landroid/text/style/CharacterStyle;

    move-result-object v13

    .line 189
    const/16 v14, 0x21

    .line 188
    invoke-virtual {v10, v13, v9, v1, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 191
    if-lez v12, :cond_7

    move-object/from16 v0, p3

    array-length v13, v0

    if-lt v4, v13, :cond_8

    .line 196
    :cond_7
    return-object v10

    :cond_8
    move v7, v8

    .end local v8    # "spanIndex":I
    .restart local v7    # "spanIndex":I
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_0
.end method

.method public constructHighlightStyle(Ljava/lang/String;[F)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "machedIdx"    # [F

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    return-object v6

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, "nameLen":I
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v4, "style":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_4

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    array-length v5, p2

    if-ge v1, v5, :cond_4

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "colorSpan":Landroid/text/style/BackgroundColorSpan;
    aget v5, p2, v1

    float-to-double v6, v5

    const-wide v8, 0x3feff7ced916872bL    # 0.999

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 119
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;

    .end local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    invoke-direct {v0, v5, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;-><init>(II)V

    .line 128
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 129
    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x21

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .restart local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    :cond_3
    aget v5, p2, v1

    float-to-double v6, v5

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 122
    aget v5, p2, v1

    .line 121
    const v6, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    add-float v3, v6, v5

    .line 123
    .local v3, "partialColorRatio":F
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;

    .end local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    .line 124
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 125
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 126
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    .line 123
    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;-><init>(II)V

    .local v0, "colorSpan":Landroid/text/style/BackgroundColorSpan;
    goto :goto_1

    .line 133
    .end local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    .end local v1    # "i":I
    .end local v3    # "partialColorRatio":F
    :cond_4
    return-object v4
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public setHighlight(II)V
    .locals 1
    .param p1, "fgColor"    # I
    .param p2, "bgColor"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    if-eq v0, p2, :cond_0

    .line 74
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mBackgroundColor:I

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    if-eq v0, p1, :cond_1

    .line 83
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mFgColor:I

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->mColorSpanPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    :cond_1
    return-void
.end method

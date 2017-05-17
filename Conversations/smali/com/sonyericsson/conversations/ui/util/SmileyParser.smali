.class public Lcom/sonyericsson/conversations/ui/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$PERMISSIBLE_SMILEY;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;


# instance fields
.field private final mConstrainedSmileyPattern:Ljava/util/regex/Pattern;

.field private final mConstrainedSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissibleSmileyPattern:Ljava/util/regex/Pattern;

.field private final mPermissibleSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    .line 88
    const-class v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$PERMISSIBLE_SMILEY;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildSmileyToRes(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPermissibleSmileyToRes:Ljava/util/HashMap;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPermissibleSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "docomo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildPattern(Ljava/util/Set;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPermissibleSmileyPattern:Ljava/util/regex/Pattern;

    .line 91
    const-class v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildSmileyToRes(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mConstrainedSmileyToRes:Ljava/util/HashMap;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mConstrainedSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildPattern(Ljava/util/Set;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mConstrainedSmileyPattern:Ljava/util/regex/Pattern;

    .line 86
    return-void
.end method

.method private buildPattern(Ljava/util/Set;Z)Ljava/util/regex/Pattern;
    .locals 7
    .param p2, "isConstrainedSmiley"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "smileyToResSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .local v1, "patternString":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 253
    const-string/jumbo v4, "(?<=^|\\s)("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v0, "keySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;-><init>(Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    .end local v0    # "keySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    .restart local v0    # "keySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string/jumbo v6, ")"

    invoke-virtual {v1, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-eqz p2, :cond_2

    .line 267
    const-string/jumbo v4, "(?=\\s|$)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    return-object v4
.end method

.method private buildSmileyToRes(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;:",
            "Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "smileyClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v7, 0x0

    .line 224
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v4, "smileyToRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, v5, v8

    .line 226
    .local v1, "smiley":Ljava/lang/Enum;, "TE;"
    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;->getSmileyDrawableRes()I

    move-result v0

    .line 228
    .local v0, "drawableRes":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;->getSmileyArrayRes()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "smileyTexts":[Ljava/lang/String;
    array-length v10, v3

    move v6, v7

    :goto_1
    if-ge v6, v10, :cond_0

    aget-object v2, v3, v6

    .line 230
    .local v2, "smileyText":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 225
    .end local v2    # "smileyText":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 233
    .end local v0    # "drawableRes":I
    .end local v1    # "smiley":Ljava/lang/Enum;, "TE;"
    .end local v3    # "smileyTexts":[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    .line 61
    return-void
.end method

.method private setSmileySpan(Landroid/text/SpannableStringBuilder;Ljava/util/regex/Matcher;I)V
    .locals 9
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "resId"    # I

    .prologue
    .line 301
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 302
    .local v4, "smileyDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 303
    .local v0, "bounds":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 304
    const v7, 0x7f0c008a

    .line 303
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 305
    .local v3, "heightAdjustment":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 306
    const v7, 0x7f0c008b

    .line 305
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 307
    .local v5, "yAdjustment":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;

    invoke-direct {v1, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .local v1, "centeredImageSpan":Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;
    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;->adjustYPosition(I)V

    .line 311
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 312
    const/16 v8, 0x21

    .line 311
    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "bounds":I
    .end local v1    # "centeredImageSpan":Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;
    .end local v3    # "heightAdjustment":I
    .end local v4    # "smileyDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "yAdjustment":I
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "Error adding smiley-span."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 284
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPermissibleSmileyPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 285
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPermissibleSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 287
    .local v2, "resId":I
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->setSmileySpan(Landroid/text/SpannableStringBuilder;Ljava/util/regex/Matcher;I)V

    goto :goto_0

    .line 290
    .end local v2    # "resId":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mConstrainedSmileyPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 291
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mConstrainedSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    .restart local v2    # "resId":I
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->setSmileySpan(Landroid/text/SpannableStringBuilder;Ljava/util/regex/Matcher;I)V

    goto :goto_1

    .line 296
    .end local v2    # "resId":I
    :cond_1
    return-object v0
.end method

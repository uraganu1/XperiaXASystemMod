.class public Lcom/sonyericsson/conversations/ui/RecipientBubble;
.super Ljava/lang/Object;
.source "RecipientBubble.java"


# instance fields
.field private mParentView:Landroid/widget/TextView;

.field private mSeparatorWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mSeparatorWidth:I

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method private getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ann"    # [Landroid/text/Annotation;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 133
    .local v0, "annotation":Landroid/text/Annotation;
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "annotation":Landroid/text/Annotation;
    :cond_1
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getFieldAt(Ljava/lang/String;Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/text/Spanned;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 103
    const-class v2, Landroid/text/Annotation;

    invoke-interface {p2, p3, p4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 104
    .local v0, "a":[Landroid/text/Annotation;
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {p2, p3, p4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_0
    return-object v1
.end method

.method private getSeparatorWidth()I
    .locals 5

    .prologue
    .line 112
    iget v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mSeparatorWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 115
    .local v2, "textPaint":Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mSeparatorWidth:I

    .line 122
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textPaint":Landroid/graphics/Paint;
    :cond_0
    iget v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mSeparatorWidth:I

    return v3
.end method


# virtual methods
.method public buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isImContact"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "nameAndNumber":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 45
    const-string/jumbo v9, ""

    return-object v9

    .line 48
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    .local v7, "ss":Landroid/text/SpannableString;
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 51
    .local v3, "len":I
    new-instance v10, Landroid/text/Annotation;

    const-string/jumbo v11, "name"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, p2

    :goto_0
    invoke-direct {v10, v11, v9}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 52
    const/16 v11, 0x21

    .line 51
    invoke-virtual {v7, v10, v9, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v5, p2

    .line 55
    .local v5, "nameString":Ljava/lang/String;
    :goto_1
    new-instance v9, Landroid/text/Annotation;

    const-string/jumbo v10, "number"

    invoke-direct {v9, v10, p2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v10, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    new-instance v9, Landroid/text/Annotation;

    const-string/jumbo v10, "isImContact"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v10, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    new-instance v8, Lcom/sonyericsson/conversations/ui/RecipientDrawable;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 60
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    .line 59
    invoke-direct {v8, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;-><init>(Landroid/text/TextPaint;F)V

    .line 63
    .local v8, "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0023

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 64
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 62
    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setPadding(II)V

    .line 65
    invoke-virtual {v8, v5}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setText(Ljava/lang/String;)V

    .line 66
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    if-lez v9, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getSeparatorWidth()I

    move-result v6

    .line 69
    .local v6, "separatorWidth":I
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    .line 70
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v10

    .line 69
    sub-int/2addr v9, v10

    .line 71
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingEnd()I

    move-result v10

    .line 69
    sub-int/2addr v9, v10

    sub-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setMaxDrawableWidth(I)V

    .line 75
    .end local v6    # "separatorWidth":I
    :cond_1
    if-eqz p3, :cond_4

    .line 76
    const v9, 0x7f0e002f

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 81
    .local v1, "color":I
    :goto_2
    const v9, 0x7f020128

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setBackground(Landroid/graphics/drawable/Drawable;I)V

    .line 82
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicWidth()I

    move-result v9

    .line 83
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicHeight()I

    move-result v10

    .line 82
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setBounds(IIII)V

    .line 85
    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 86
    .local v2, "imageSpan":Landroid/text/style/ImageSpan;
    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v7, v2, v9, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    return-object v7

    .end local v1    # "color":I
    .end local v2    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v5    # "nameString":Ljava/lang/String;
    .end local v8    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    :cond_2
    move-object v9, p1

    .line 51
    goto/16 :goto_0

    .line 53
    :cond_3
    move-object v5, p1

    .restart local v5    # "nameString":Ljava/lang/String;
    goto/16 :goto_1

    .line 78
    .restart local v8    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_2
.end method

.method public formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 170
    move-object v0, p2

    .line 171
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v1

    .line 172
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v1, p2}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    :cond_1
    return-object v0

    .line 178
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIsImContactAt(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 1
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 99
    const-string/jumbo v0, "isImContact"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameAt(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 1
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 95
    const-string/jumbo v0, "name"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberAt(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 1
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 91
    const-string/jumbo v0, "number"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientBubbleSize(Ljava/lang/String;Landroid/content/Context;)F
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientDrawable;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 142
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;-><init>(Landroid/text/TextPaint;F)V

    .line 146
    .local v1, "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 147
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 145
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setPadding(II)V

    .line 148
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setText(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v3

    .line 150
    sub-int/2addr v2, v3

    .line 152
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingEnd()I

    move-result v3

    .line 150
    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setMaxDrawableWidth(I)V

    .line 155
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 156
    .local v0, "color":I
    const v2, 0x7f020128

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setBackground(Landroid/graphics/drawable/Drawable;I)V

    .line 157
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

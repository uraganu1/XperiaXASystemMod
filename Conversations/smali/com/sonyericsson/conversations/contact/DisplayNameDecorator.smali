.class public Lcom/sonyericsson/conversations/contact/DisplayNameDecorator;
.super Ljava/lang/Object;
.source "DisplayNameDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendDecoratedDisplayName(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "displayName"    # Lcom/sonyericsson/conversations/contact/DisplayName;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->isImDisplayName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    .local v0, "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 20
    const/16 v4, 0x21

    .line 19
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 23
    .end local v0    # "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public static appendDecoratedDisplayNameAlongWithAliasAndAddress(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "displayName"    # Lcom/sonyericsson/conversations/contact/DisplayName;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->isImDisplayName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v1, " \""

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 36
    const/16 v4, 0x21

    .line 34
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 39
    .end local v0    # "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public static appendDecoratedDisplayNameWithAddress(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "displayName"    # Lcom/sonyericsson/conversations/contact/DisplayName;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->isImDisplayName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 47
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .local v0, "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 52
    const/16 v4, 0x21

    .line 51
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 55
    .end local v0    # "displayNameBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

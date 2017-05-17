.class public Lcom/sonyericsson/conversations/util/ParticipantUtils;
.super Ljava/lang/Object;
.source "ParticipantUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, p2, v0, v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedDisplayName(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;ZZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;Z)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p3, "addNumberWithUserAlias"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedDisplayName(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;ZZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static appendFormattedDisplayName(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;ZZ)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p3, "appendAddress"    # Z
    .param p4, "addNumberWithUserAlias"    # Z

    .prologue
    .line 91
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v1

    .line 95
    .local v1, "displayName":Lcom/sonyericsson/conversations/contact/DisplayName;
    if-eqz p3, :cond_0

    .line 96
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/conversations/contact/DisplayNameDecorator;->appendDecoratedDisplayNameWithAddress(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 98
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    :cond_1
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/contact/DisplayNameDecorator;->appendDecoratedDisplayName(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 99
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/conversations/contact/DisplayNameDecorator;->appendDecoratedDisplayNameAlongWithAliasAndAddress(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 107
    .end local v1    # "displayName":Lcom/sonyericsson/conversations/contact/DisplayName;
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Participant;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 109
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 112
    :cond_4
    const v3, 0x7f0b013c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3
.end method

.method public static appendFormattedDisplayNameWithAddress(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedDisplayName(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;ZZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static appendFormattedList(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Ljava/util/List;Z)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "addNumberWithUserAlias"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;Z)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v3, 0x0

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, "nrParticipants":I
    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const v2, 0x7f0b013c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2

    .line 176
    :cond_0
    if-lez v1, :cond_1

    .line 177
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {p0, p1, v2, p3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;Z)Landroid/text/SpannableStringBuilder;

    .line 179
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 180
    const-string/jumbo v2, ", "

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {p0, p1, v2, p3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;Z)Landroid/text/SpannableStringBuilder;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static formatAddresses(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatAddresses(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatAddresses(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 209
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFormatted(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 41
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedList(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Ljava/util/List;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getParticipantList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "addresses"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "recipientIds":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 230
    .local v1, "recipientId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v5, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "recipientId":Ljava/lang/String;
    .end local v2    # "recipientIds":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static isValidUriOrNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p0, :cond_0

    .line 123
    return v2

    .line 125
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v0

    .line 126
    .local v0, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    if-nez v0, :cond_1

    .line 127
    return v2

    .line 129
    :cond_1
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/contact/ImContactApi;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static removeStrictPhoneNumberPrefixFromParticipant(Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/model/Participant;
    .locals 5
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 250
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStrictPhonenumberComparisonPrefix()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "numberPrefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    return-object p0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "strippedAddress":Ljava/lang/String;
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v2}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "strippedPrefixParticipants":Lcom/sonyericsson/conversations/model/Participant;
    return-object v3

    .line 260
    .end local v2    # "strippedAddress":Ljava/lang/String;
    .end local v3    # "strippedPrefixParticipants":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    return-object p0
.end method

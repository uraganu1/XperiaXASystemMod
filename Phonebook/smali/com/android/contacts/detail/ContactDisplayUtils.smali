.class public Lcom/android/contacts/detail/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureStarredMenuItem(Landroid/view/MenuItem;Lcom/android/contacts/common/model/Contact;)V
    .locals 3
    .param p0, "starredMenuItem"    # Landroid/view/MenuItem;
    .param p1, "contact"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/android/contacts/detail/ContactDisplayUtils;->isStarVisible(Lcom/android/contacts/common/model/Contact;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getStarred()Z

    move-result v0

    .line 94
    .local v0, "isStarred":Z
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const v1, 0x7f020076

    .line 98
    .local v1, "resId":I
    :goto_0
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 99
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 100
    if-eqz v0, :cond_1

    const v2, 0x7f09013c

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 90
    .end local v0    # "isStarred":Z
    .end local v1    # "resId":I
    :goto_2
    return-void

    .line 97
    .restart local v0    # "isStarred":Z
    :cond_0
    const v1, 0x7f020077

    .restart local v1    # "resId":I
    goto :goto_0

    .line 100
    :cond_1
    const v2, 0x7f09013d

    goto :goto_1

    .line 102
    .end local v0    # "isStarred":Z
    .end local v1    # "resId":I
    :cond_2
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/common/model/Contact;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "altDisplayName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v2

    .line 57
    .local v2, "prefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    const-string/jumbo v3, ""

    .line 58
    .local v3, "styledName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    const v5, 0x7f0901f0

    .line 67
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    :goto_0
    return-object v3

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 60
    move-object v3, v1

    .line 64
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v0

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    return-object p1
.end method

.method public static isStarVisible(Lcom/android/contacts/common/model/Contact;)Z
    .locals 2
    .param p0, "contact"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isInVisibleGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isSimContact()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldShowSip(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSIMCardAbsent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .line 116
    .local v0, "isSimCardInserted":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->isChineseOperatorSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->isCountryChina(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 115
    :cond_2
    return v1

    .line 113
    .end local v0    # "isSimCardInserted":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isSimCardInserted":Z
    goto :goto_0
.end method

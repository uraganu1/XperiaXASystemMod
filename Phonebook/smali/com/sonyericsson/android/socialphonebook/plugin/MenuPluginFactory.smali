.class public final Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;
.super Ljava/lang/Object;
.source "MenuPluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->-com_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->-com_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->values()[Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->CALL_LOG:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->-com_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallLogPlugin(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string/jumbo v1, "docomo"

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, "enableDocomoPrefix":Z
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;-><init>()V

    return-object v1

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->isGenericAddPrefixEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;-><init>()V

    return-object v1

    .line 65
    .end local v0    # "enableDocomoPrefix":Z
    :cond_1
    new-instance v1, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;

    invoke-direct {v1}, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;-><init>()V

    return-object v1
.end method

.method private static getQuickContactPlugin(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string/jumbo v1, "docomo"

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    .local v0, "enableDocomoPrefix":Z
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;

    invoke-direct {v1}, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;-><init>()V

    return-object v1

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->isGenericAddPrefixEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-direct {v1}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;-><init>()V

    return-object v1

    .line 82
    .end local v0    # "enableDocomoPrefix":Z
    :cond_1
    new-instance v1, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;

    invoke-direct {v1}, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;-><init>()V

    return-object v1
.end method

.method private static isGenericAddPrefixEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string/jumbo v1, "kddi"

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isAddPrefixForSoftbankEnabled()Z

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    .local v0, "isGenericPrefixEnabled":Z
    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "You can not set null for Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "You can not set null for MenuPluginType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->-getcom_sonyericsson_android_socialphonebook_plugin_MenuPluginFactory$MenuPluginTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance v0, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;

    invoke-direct {v0}, Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;-><init>()V

    .line 49
    .local v0, "plugin":Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    :goto_0
    return-object v0

    .line 40
    .end local v0    # "plugin":Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    :pswitch_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->getCallLogPlugin(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v0

    .restart local v0    # "plugin":Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    goto :goto_0

    .line 43
    .end local v0    # "plugin":Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    :pswitch_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->getQuickContactPlugin(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v0

    .restart local v0    # "plugin":Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

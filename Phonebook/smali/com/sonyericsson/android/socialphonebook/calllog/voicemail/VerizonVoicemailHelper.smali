.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;
.super Ljava/lang/Object;
.source "VerizonVoicemailHelper.java"


# static fields
.field private static final PROJECT:[Ljava/lang/String;

.field public static final VVM3C_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.vvm3client"

.field private static final VVM3C_VM_DETAIL_ACTIVITY_NAME:Ljava/lang/String; = "com.sonymobile.vvm3client.ui.VMDetailActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "source_data"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->PROJECT:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.vvm3client"

    .line 77
    const-string/jumbo v2, "com.sonymobile.vvm3client.ui.VMDetailActivity"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method public static getVoicemailDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-object p1

    .line 46
    :cond_0
    const/4 v0, 0x3

    .line 45
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVvmUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uriStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v9, 0x0

    .line 53
    .local v9, "vvmUri":Landroid/net/Uri;
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->PROJECT:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "source_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 60
    .local v8, "index":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 61
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "data":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 66
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "vvmUri":Landroid/net/Uri;
    :cond_0
    if-eqz v6, :cond_1

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    return-object v9

    .line 65
    .restart local v9    # "vvmUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 66
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_2
    throw v0
.end method

.method public static isVerizonVoicemail(Ljava/lang/String;)Z
    .locals 2
    .param p0, "uriStr"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getSourcePackageFromVoicemailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "sourcePackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string/jumbo v1, "com.sonymobile.vvm3client"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static viewVerizonVoicemail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriStr"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->isVerizonVoicemail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->getVvmUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->createIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

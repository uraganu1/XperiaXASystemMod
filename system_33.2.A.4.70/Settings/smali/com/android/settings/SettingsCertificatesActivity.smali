.class public Lcom/android/settings/SettingsCertificatesActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsCertificatesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static certificatesExist()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getPrimaryCertificatesFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getFallbackCertificatesFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static getFallbackCertificatesFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "/lta-label/"

    const-string/jumbo v1, ".*\\.html"

    invoke-static {v0, v1}, Lcom/android/settings/SettingsCertificatesActivity;->getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "regExSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "fileDir":Ljava/io/File;
    new-instance v3, Lcom/android/settings/SettingsCertificatesActivity$1;

    invoke-direct {v3, p1}, Lcom/android/settings/SettingsCertificatesActivity$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "fileNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private static getPrimaryCertificatesFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/etc/certificates/certificates.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    const-string/jumbo v0, "/etc/certificates/certificates.html"

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getPrimaryCertificatesFileName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "fileName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 55
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getFallbackCertificatesFileName()Ljava/lang/String;

    move-result-object v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    const-string/jumbo v5, "SettingsCertificatesActivity"

    const-string/jumbo v6, "No certificates HTML file found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsCertificatesActivity;->finish()V

    .line 59
    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    const-string/jumbo v5, "SettingsCertificatesActivity"

    const-string/jumbo v6, "No certificates HTML file found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SettingsCertificatesActivity;->finish()V

    .line 67
    return-void

    .line 70
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "text/html"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const v5, 0x7f0b0c61

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsCertificatesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.extra.TITLE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v5, "com.android.htmlviewer"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsCertificatesActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsCertificatesActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "SettingsCertificatesActivity"

    const-string/jumbo v6, "Failed to find viewer"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public Lcom/android/contacts/common/testing/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    return-object v1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method

.method public setSystemService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

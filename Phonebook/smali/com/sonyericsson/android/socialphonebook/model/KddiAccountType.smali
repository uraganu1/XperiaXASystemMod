.class public Lcom/sonyericsson/android/socialphonebook/model/KddiAccountType;
.super Lcom/android/contacts/common/model/account/ExternalAccountType;
.source "KddiAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.kddi.ast.auoneid"

.field public static final PACKAGE_NAME_AUTHENTICATOR:Ljava/lang/String; = "com.kddi.android.auoneidsetting"

.field private static final PACKAGE_NAME_FOR_CONTACTS_XML:Ljava/lang/String; = "jibe.android.activity"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "jibe.android.activity"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

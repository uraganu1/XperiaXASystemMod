.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "estimatedType"    # I
    .param p5, "estimatedCharset"    # Ljava/lang/String;
    .param p6, "vcardVersion"    # I
    .param p7, "entryCount"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 101
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 102
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 103
    iput p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    .line 104
    iput-object p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 105
    iput p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    .line 106
    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    .line 99
    return-void
.end method

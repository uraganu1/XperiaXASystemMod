.class public Lcom/android/contacts/common/vcard/ExportRequest;
.super Ljava/lang/Object;
.source "ExportRequest.java"


# instance fields
.field public final contactIds:[J

.field public final destUri:Landroid/net/Uri;

.field public final exportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "destUri"    # Landroid/net/Uri;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "exportType"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;[JLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[JLjava/lang/String;)V
    .locals 0
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "contactIds"    # [J
    .param p3, "exportType"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportRequest;->contactIds:[J

    .line 47
    return-void
.end method
.class public Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
.super Ljava/lang/Object;
.source "HttpsProvisioningResult.java"


# instance fields
.field public code:I

.field public content:Ljava/lang/String;

.field public retryAfter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    return-void
.end method

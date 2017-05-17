.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;
.source "Unknown"


# instance fields
.field private final zzVn:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "connectionStatusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zzVn:I

    return-void
.end method

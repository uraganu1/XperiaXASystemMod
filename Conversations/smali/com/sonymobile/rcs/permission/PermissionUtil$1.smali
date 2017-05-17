.class Lcom/sonymobile/rcs/permission/PermissionUtil$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/permission/PermissionUtil;->redirectToPermissionInfoIfNeeded(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDone(Ljava/util/HashMap;I)V
    .locals 0
    .param p2, "redirectingPermissionValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "responseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->redirecting(I)V

    .line 129
    return-void
.end method

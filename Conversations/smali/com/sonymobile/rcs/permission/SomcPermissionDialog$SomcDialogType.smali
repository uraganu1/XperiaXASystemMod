.class public final enum Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
.super Ljava/lang/Enum;
.source "SomcPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/permission/SomcPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SomcDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

.field public static final enum APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

.field public static final enum RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v1, "RATIONALE_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    new-instance v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v1, "APP_INFO_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->$VALUES:[Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    .line 63
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->$VALUES:[Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    return-object v0
.end method

.class public final enum Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
.super Ljava/lang/Enum;
.source "SomcPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SomcDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

.field public static final enum APP_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

.field public static final enum RATIONALE_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

.field public static final enum WRITE_SETTINGS_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v1, "RATIONALE_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    new-instance v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v1, "APP_INFO_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    new-instance v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v1, "WRITE_SETTINGS_INFO_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->WRITE_SETTINGS_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->WRITE_SETTINGS_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->$VALUES:[Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->$VALUES:[Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    return-object v0
.end method

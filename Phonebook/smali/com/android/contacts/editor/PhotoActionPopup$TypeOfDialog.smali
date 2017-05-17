.class public final enum Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;
.super Ljava/lang/Enum;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhotoActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeOfDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

.field public static final enum Group:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

.field public static final enum LinkedContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

.field public static final enum NormalContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    const-string/jumbo v1, "Group"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->Group:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .line 106
    new-instance v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    const-string/jumbo v1, "LinkedContact"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->LinkedContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .line 107
    new-instance v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    const-string/jumbo v1, "NormalContact"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->NormalContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->Group:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->LinkedContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->NormalContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->$VALUES:[Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->$VALUES:[Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    return-object v0
.end method

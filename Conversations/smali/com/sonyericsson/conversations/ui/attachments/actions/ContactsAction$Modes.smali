.class final enum Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;
.super Ljava/lang/Enum;
.source "ContactsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Modes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

.field public static final enum TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

.field public static final enum V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const-string/jumbo v1, "V_CARD"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    return-object v0
.end method

.class public Lcom/sonymobile/settings/nfc/HceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HceReceiver.java"


# static fields
.field public static sIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/settings/nfc/HceReceiver;->sIntent:Landroid/content/Intent;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/settings/nfc/HceReceiver;->sIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.sonymobile.nfc.action.ROUTING_TABLE_OVERFLOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sput-object p2, Lcom/sonymobile/settings/nfc/HceReceiver;->sIntent:Landroid/content/Intent;

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, "dialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    .end local v1    # "dialogIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

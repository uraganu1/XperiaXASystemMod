.class Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidDialogCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 2299
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2300
    const v4, 0x7f090256

    .line 2299
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2301
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2302
    const v4, 0x7f090257

    .line 2301
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2303
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 2304
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2298
    return-void
.end method

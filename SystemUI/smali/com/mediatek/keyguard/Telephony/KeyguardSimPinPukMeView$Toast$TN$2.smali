.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukMeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;)V
    .locals 0
    .param p1, "this$2"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;->this$2:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;->this$2:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->handleHide()V

    .line 1201
    return-void
.end method

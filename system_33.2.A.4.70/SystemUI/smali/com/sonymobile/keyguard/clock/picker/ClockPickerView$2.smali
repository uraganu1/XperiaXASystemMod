.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;
.super Ljava/lang/Object;
.source "ClockPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->-get1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    .line 65
    return-void
.end method

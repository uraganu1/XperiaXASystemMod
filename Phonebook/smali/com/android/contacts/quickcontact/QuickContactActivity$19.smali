.class Lcom/android/contacts/quickcontact/QuickContactActivity$19;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->showCallPlusTutorialIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 2797
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$19;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$19;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showCallPlusTutorial()V

    .line 2800
    return-void
.end method

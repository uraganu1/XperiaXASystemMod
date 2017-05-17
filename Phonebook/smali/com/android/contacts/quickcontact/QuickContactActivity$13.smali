.class Lcom/android/contacts/quickcontact/QuickContactActivity$13;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/common/model/Contact;)V
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
    .line 1003
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap10(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 1005
    return-void
.end method

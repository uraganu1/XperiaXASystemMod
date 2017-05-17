.class Lcom/android/contacts/quickcontact/QuickContactActivity$15;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;[Ljava/lang/String;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "val$number"    # Ljava/lang/String;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap16(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)V

    .line 1423
    return-void
.end method

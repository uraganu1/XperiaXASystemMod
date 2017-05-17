.class Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;
.super Ljava/lang/Object;
.source "SocialPhonebookActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$sonyericsson$android$socialphonebook$activities$ActionBarAdapter$ContactQueryListener$Action:[I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->values()[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;
    .param p2, "newQueryString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    .line 89
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/android/contacts/list/ViewPagerTabs;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ViewPagerTabs;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setEnabled(Z)V

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/android/contacts/list/ViewPagerTabs;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ViewPagerTabs;->setVisibility(I)V

    goto :goto_0

    .line 69
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public final Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "QtiDcTracker.java"


# static fields
.field private static final EVENT_3GPP_RECORDS_LOADED:I = 0x64


# instance fields
.field private final EVENT_MODEM_DATA_PROFILE_READY:I

.field private LOG_TAG:Ljava/lang/String;

.field private OMH_FEATURE_ENABLE_OVERRIDE:Ljava/lang/String;

.field private final QTI_DCT_EVENTS_BASE:I

.field private mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

.field protected mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field mSimRecordsLoadedHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 53
    const-string v2, "QtiDCT"

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 54
    const-string v2, "persist.radio.omh.enable"

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->OMH_FEATURE_ENABLE_OVERRIDE:Ljava/lang/String;

    .line 59
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->QTI_DCT_EVENTS_BASE:I

    .line 60
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->EVENT_MODEM_DATA_PROFILE_READY:I

    .line 66
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    new-instance v2, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;

    invoke-direct {v2, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 89
    const-string v2, "QtiGsmDCT"

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 96
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 101
    .local v1, "fetchApnFromOmhCard":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fetchApnFromOmhCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->OMH_FEATURE_ENABLE_OVERRIDE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    .local v0, "featureOverride":Z
    if-eqz v0, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OMH: feature-config override enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 106
    move v1, v0

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    new-instance v2, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local p1    # "p":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {v2, p1}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    .line 111
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v5, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    .end local v0    # "featureOverride":Z
    .end local v1    # "fetchApnFromOmhCard":Z
    :cond_1
    return-void

    .line 90
    .restart local p1    # "p":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 91
    const-string v2, "QtiCdmaDCT"

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_3
    const-string v2, "DCT"

    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected phone type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsDisposed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private create3gppApnsList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, "apnsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 306
    .local v9, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, "operator":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create3gppApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 317
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 318
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    invoke-virtual {p0, v7, v9}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->createApnList(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;

    move-result-object v6

    .line 321
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v6

    .line 306
    .end local v8    # "operator":Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_0
.end method

.method private onModemApnProfileReady()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    const-string v1, "psRestrictEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 142
    :cond_0
    const-string v0, "OMH: onModemApnProfileReady(): Setting up data call"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 143
    const-string v0, "apnChanged"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->tryRestartDataConnections(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private updateSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 285
    .local v0, "newSimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimRecords: newSimRecords = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 288
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_0

    .line 289
    if-eqz v1, :cond_2

    .line 290
    const-string v2, "Removing stale sim objects."

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 292
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 294
    :cond_2
    if-eqz v0, :cond_0

    .line 295
    const-string v2, "New sim records found"

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 1
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 133
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->clearActiveApnProfile()V

    .line 136
    :cond_0
    return-void
.end method

.method protected createAllApnList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "operator":Ljava/lang/String;
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    .line 185
    .local v9, "radioTech":I
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_0

    invoke-static {v9}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    if-eq v0, v9, :cond_0

    .line 187
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v7, "mOmhApnsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->getOmhApnProfilesList()Ljava/util/ArrayList;

    move-result-object v7

    .line 189
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "createAllApnList: Copy Omh profiles"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    .end local v7    # "mOmhApnsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    :cond_0
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "_id"

    .line 202
    .local v5, "orderBy":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0, v6, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->createApnList(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 211
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->addEmergencyApnSetting()V

    .line 218
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->dedupeApnSettings()V

    .line 220
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->isDummyProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p0, v8}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->addDummyApnSettings(Ljava/lang/String;)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 226
    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 237
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->setDataProfilesAsNeeded()V

    .line 240
    return-void

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->getPreferredApn(Ljava/util/ArrayList;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 231
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 232
    iput-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 233
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->setPreferredApn(I)V

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 120
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v1, p0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->unregisterForModemProfileReady(Landroid/os/Handler;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 124
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 126
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDcTracker handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsDisposed:Z

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    const-string v0, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 253
    :pswitch_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->onModemApnProfileReady()V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mAutoAttachOnCreationConfig:Z

    .line 152
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "OMH: onRecordsLoaded(): calling loadProfiles()"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mOmhApt:Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->loadProfiles()V

    .line 156
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "OMH: onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 158
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->createAllApnList()V

    .line 162
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 164
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 166
    :cond_2
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUpdateIcc()Z
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->updateSimRecords()V

    .line 265
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()Z

    move-result v0

    return v0
.end method

.method protected setInitialAttachApn()V
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->create3gppApnsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->getPreferredApn(Ljava/util/ArrayList;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 272
    .local v1, "preferApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {p0, v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn(Ljava/util/ArrayList;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 273
    return-void
.end method

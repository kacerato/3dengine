.class Landroidx/room/RxRoom$3$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom$3;->subscribe(LTe/D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RxRoom$3;

.field final synthetic val$emitter:LTe/D;


# direct methods
.method public constructor <init>(Landroidx/room/RxRoom$3;[Ljava/lang/String;LTe/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "tables",
            "val$emitter"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RxRoom$3$1;->this$0:Landroidx/room/RxRoom$3;

    iput-object p3, p0, Landroidx/room/RxRoom$3$1;->val$emitter:LTe/D;

    invoke-direct {p0, p2}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/room/RxRoom$3$1;->val$emitter:LTe/D;

    sget-object v0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p1, v0}, LTe/k;->g(Ljava/lang/Object;)V

    return-void
.end method

.class public interface abstract Lo3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/l;

    invoke-direct {v0}, Lo3/l;-><init>()V

    sput-object v0, Lo3/m;->a:Lo3/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lo3/g<",
            "*>;>;"
        }
    .end annotation
.end method

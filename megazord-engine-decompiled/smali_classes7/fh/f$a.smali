.class public Lfh/f$a;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f;->U(ILfh/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lfh/a;

.field public final synthetic e:Lfh/f;


# direct methods
.method public varargs constructor <init>(Lfh/f;Ljava/lang/String;[Ljava/lang/Object;ILfh/a;)V
    .locals 0

    iput-object p1, p0, Lfh/f$a;->e:Lfh/f;

    iput p4, p0, Lfh/f$a;->c:I

    iput-object p5, p0, Lfh/f$a;->d:Lfh/a;

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lfh/f$a;->e:Lfh/f;

    iget v1, p0, Lfh/f$a;->c:I

    iget-object v2, p0, Lfh/f$a;->d:Lfh/a;

    invoke-virtual {v0, v1, v2}, Lfh/f;->T(ILfh/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lfh/f$a;->e:Lfh/f;

    invoke-static {v0}, Lfh/f;->a(Lfh/f;)V

    :goto_0
    return-void
.end method

##JMH Benchmark


`

    import com.gs.collections.api.block.predicate.Predicate2;
    import com.gs.collections.api.list.MutableList;
    import com.gs.collections.api.map.MutableMap;
    import com.gs.collections.impl.list.mutable.FastList;
    import com.gs.collections.impl.map.mutable.UnifiedMap;
    import org.openjdk.jmh.annotations.*;

    import java.util.ArrayList;
    import java.util.HashMap;
    import java.util.List;
    import java.util.Map;
    import java.util.concurrent.TimeUnit;

    @State(Scope.Thread)
    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.MICROSECONDS)

    public class CollectionComparison {

        //Java Collections
        List<PermissionKey> firstset = new ArrayList<>();
        List<Permissions> permissions = new ArrayList<>();
        Map<PermissionKey, List<Permissions>> secondset = new HashMap<>();

        //Goldmansachs Collections
        MutableList<PermissionKey> gsfirstset = FastList.newList();
        MutableList<Permissions> gspermissions = FastList.newList();
        MutableMap<PermissionKey, MutableList<Permissions>> gssecondset =
                                                                    UnifiedMap.newMap();

        @Setup
        public void setUp() {
            //Setup for using Java Collections
            firstset.add(new PermissionKey("P1", "R1"));
            firstset.add(new PermissionKey("P2", "R2"));
            firstset.add(new PermissionKey("P3", "R3"));

            permissions.add(new Permissions());

            secondset.put(new PermissionKey("P1", "R1"),permissions);
            secondset.put(new PermissionKey("P2", "R2"),permissions);

            //Setup for using Goldmansachs Collections
            gsfirstset.add(new PermissionKey("P1", "R1"));
            gsfirstset.add(new PermissionKey("P2", "R2"));
            gsfirstset.add(new PermissionKey("P3", "R3"));

            gspermissions.add(new Permissions());

            gssecondset.put(new PermissionKey("P1", "R1"),gspermissions);
            gssecondset.put(new PermissionKey("P2", "R2"),gspermissions);

        }

        @Benchmark
        public void javacollections() {
            PermissionKey key = null;
            Map<PermissionKey, List<Permissions>> result = new HashMap<>();
            for (PermissionKey pkey : firstset) {
                for (Map.Entry<PermissionKey, List<Permissions>> entry : secondset.entrySet()) {
                    key = entry.getKey();
                    if (entry.getKey().equals( pkey )) {
                        result.put(key,entry.getValue());
                    }
                }
            }

        }



        @Benchmark
        public void goldmansachscollections() {
            MutableMap<PermissionKey,MutableList<Permissions>> result = gssecondset.select(
                    new Predicate2<PermissionKey,MutableList<Permissions>>() {
                        public boolean accept(PermissionKey each,MutableList<Permissions> each1) {
                            return gsfirstset.contains(each);
                        }
                    });
        }
    }


`
